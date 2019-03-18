# go test
alias got='go test $(go list ./... | grep -v /vendor/)'
