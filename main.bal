import ballerina/http;
import ballerina/log;

configurable string choreoApiKey = "";
configurable string serviceUrl = "";

http:Client greetingClient = check new(serviceUrl);

public function main() returns error? {
    log:printInfo("choreo-api-key: " + choreoApiKey);
    string response = check greetingClient->get(string `/greeting?name=yoo`, {"choreo-api-key": choreoApiKey});
    log:printInfo("Response: " + response);
}
