pipeline {
    agent {
        kubernetes {
            inheritFrom "shared"
            yamlFile ".jenkins/build-pod.yaml"
        }
    }
    environment {
        DOCKER_CONFIG="/root/.docker"
        LOCAL_REPOSITORY = "${LOCAL_REGISTRY}/drugis/website"
        CHART_VERSION = '0.3.4'
    }
    stages {
        stage('Retrieve build secrets') {
            steps {
                container('vault') {
                    script {
                        sh "mkdir ${JENKINS_AGENT_WORKDIR}/.rancher"
                        // sh(script: "vault read -field=value secret/ops/jenkins/rancher/cli2.json > ${JENKINS_AGENT_WORKDIR}/.rancher/cli2.json")
                        // env.GITHUB_TOKEN = sh(script: 'vault read -field=value secret/ops/token/github', returnStdout: true)
                        // env.GITHUB_USER = sh(script: 'vault read -field=username secret/ops/token/github', returnStdout: true)
                        // env.NEXUS_AUTH = sh(script: 'vault read -field=base64 secret/ops/account/nexus', returnStdout: true)
                        // env.DOCKERHUB_AUTH = sh(script: 'vault read -field=value secret/gcc/token/dockerhub', returnStdout: true)
                    }
                }
                container('jekyll') {
                    sh "mkdir -p ${DOCKER_CONFIG}"
                    // sh "set +x && echo '{\"auths\": {\"registry.molgenis.org\": {\"auth\": \"${NEXUS_AUTH}\"}, \"https://index.docker.io/v1/\": {\"auth\": \"${DOCKERHUB_AUTH}\"}}}' > ${DOCKER_CONFIG}/config.json"
                    sh "git submodule init"
                    sh "git submodule update --remote --recursive"
                }
            }
        }
        stage('Steps [ PR ]') {
            when {
                changeRequest()
            }
            environment {
                TAG = "PR-${CHANGE_ID}-${BUILD_NUMBER}"
            }
            stages {
                stage('Build [ PR ]') {
                    steps {
                        container('node'){
                            script {
                                sh "yarn"
                            }
                        }
                        container('jekyll') {
                            script {
                                sh 'ln -sf node_modules/foundation-sites/scss/util/ _sass/drugis-css/util'
                                sh "echo version: ${TAG} > _version.yml"
                                sh 'chown -R jekyll:jekyll $(pwd)'
                                sh 'jekyll doctor'
                                sh 'jekyll build --config _version.yml,_config.yml'
                                sh "docker build . -t ${LOCAL_REPOSITORY}:${TAG} --pull --no-cache --force-rm"
                                sh "docker push ${LOCAL_REPOSITORY}:${TAG}"
                            }
                        }
                    }
                }
                stage("Deploy to dev-site [ site.dev.drugis.org ]") {
                    steps {
                        milestone(ordinal: 100, label: 'deploy to site.dev.drugis.org')
                        container('rancher') {
                            sh "rancher context switch dev-drugis"
                            sh "rancher apps upgrade --set website.image.tag=${TAG} website-drugis-dev ${CHART_VERSION}"
                        }
                    }
                }
            }
        }
        stage('Steps [ master ]') {
            when {
                branch 'master'
            }
            environment {
                TAG = "$BUILD_NUMBER"
            }
            stages {
                stage('Build [ master ]') {
                    steps {
                        container('node'){
                            script {
                                sh "yarn"
                            }
                        }
                        container('jekyll') {
                            script {
                                sh 'ln -sf node_modules/foundation-sites/scss/util/ _sass/drugis-css/util'
                                sh "echo version: ${TAG} > _version.yml"
                                sh 'chown -R jekyll:jekyll $(pwd)'
                                sh 'jekyll doctor'
                                sh 'jekyll build --config _version.yml,_config.yml'
                                sh "docker build . -t ${LOCAL_REPOSITORY}:latest -t ${LOCAL_REPOSITORY}:${TAG} --pull --no-cache --force-rm"
                                sh "docker push ${LOCAL_REPOSITORY}"
                            }
                        }
                    }
                }
                stage('Deploy release [ master ]') {
                    steps {
                        milestone(ordinal: 200, label: 'deploy to www.drugis.org')
                        container('rancher') {
                            sh "rancher context switch prod-drugis"
                            sh "rancher apps upgrade --set website.image.tag=${TAG} website-drugis-prod ${CHART_VERSION}"
                        }
                    }
                }
            }
        }
    }
}
