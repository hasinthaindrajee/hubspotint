import ballerina/http;
import ballerina/log;
import ballerinax/trigger.hubspot;

listener hubspot:Listener hubspotListener = new ({clientSecret: hubspotClientSecret, callbackURL: hubspotCallbackURL}, listenOn = 8090);

service hubspot:ContactService on hubspotListener {
    remote function onContactCreation(hubspot:WebhookEvent event) returns error? {
        do {
            log:printInfo("received contact creation event");
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactDeletion(hubspot:WebhookEvent event) returns error? {
        do {
            log:printInfo("received contact deletion event");
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactPropertychange(hubspot:WebhookEvent event) returns error? {
        do {
            log:printInfo("received contact property change event", event = event);

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactAssociationchange(hubspot:WebhookEvent event) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactMerge(hubspot:WebhookEvent event) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactRestore(hubspot:WebhookEvent event) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onContactPrivacydeletion(hubspot:WebhookEvent event) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}

listener http:Listener httpDefaultListener = http:getDefaultListener();

