.class public final Lgov/nist/javax/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final constructorArgs:[Ljava/lang/Class;

.field public static final parserConstructorCache:Ljava/util/Hashtable;

.field public static final parserTable:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    sput-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v1, "Reply-To"

    const-class v2, Lgov/nist/javax/sip/parser/ReplyToParser;

    const-string v3, "In-Reply-To"

    const-class v4, Lgov/nist/javax/sip/parser/InReplyToParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Accept-Encoding"

    const-class v2, Lgov/nist/javax/sip/parser/AcceptEncodingParser;

    const-string v3, "Accept-Language"

    const-class v4, Lgov/nist/javax/sip/parser/AcceptLanguageParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "t"

    const-class v2, Lgov/nist/javax/sip/parser/ToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "From"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/FromParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "f"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "CSeq"

    const-class v2, Lgov/nist/javax/sip/parser/CSeqParser;

    const-string v3, "Via"

    const-class v4, Lgov/nist/javax/sip/parser/ViaParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "v"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Contact"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContactParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "m"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentTypeParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Length"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentLengthParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "l"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "WWW-Authenticate"

    const-class v2, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;

    const-string v3, "Call-ID"

    const-class v4, Lgov/nist/javax/sip/parser/CallIDParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "i"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/RouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Record-Route"

    const-class v2, Lgov/nist/javax/sip/parser/RecordRouteParser;

    const-string v3, "Date"

    const-class v4, Lgov/nist/javax/sip/parser/DateParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Proxy-Authorization"

    const-class v2, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;

    const-string v3, "Proxy-Authenticate"

    const-class v4, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Retry-After"

    const-class v2, Lgov/nist/javax/sip/parser/RetryAfterParser;

    const-string v3, "Require"

    const-class v4, Lgov/nist/javax/sip/parser/RequireParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Proxy-Require"

    const-class v2, Lgov/nist/javax/sip/parser/ProxyRequireParser;

    const-string v3, "Timestamp"

    const-class v4, Lgov/nist/javax/sip/parser/TimeStampParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Unsupported"

    const-class v2, Lgov/nist/javax/sip/parser/UnsupportedParser;

    const-string v3, "User-Agent"

    const-class v4, Lgov/nist/javax/sip/parser/UserAgentParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Supported"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SupportedParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "k"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Server"

    const-class v2, Lgov/nist/javax/sip/parser/ServerParser;

    const-string v3, "Subject"

    const-class v4, Lgov/nist/javax/sip/parser/SubjectParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "s"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Subscription-State"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SubscriptionStateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Max-Forwards"

    const-class v2, Lgov/nist/javax/sip/parser/MaxForwardsParser;

    const-string v3, "MIME-Version"

    const-class v4, Lgov/nist/javax/sip/parser/MimeVersionParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Min-Expires"

    const-class v2, Lgov/nist/javax/sip/parser/MinExpiresParser;

    const-string v3, "Organization"

    const-class v4, Lgov/nist/javax/sip/parser/OrganizationParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Priority"

    const-class v2, Lgov/nist/javax/sip/parser/PriorityParser;

    const-string v3, "RAck"

    const-class v4, Lgov/nist/javax/sip/parser/RAckParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "RSeq"

    const-class v2, Lgov/nist/javax/sip/parser/RSeqParser;

    const-string v3, "Reason"

    const-class v4, Lgov/nist/javax/sip/parser/ReasonParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Warning"

    const-class v2, Lgov/nist/javax/sip/parser/WarningParser;

    const-string v3, "Expires"

    const-class v4, Lgov/nist/javax/sip/parser/ExpiresParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Event"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/EventParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Error-Info"

    const-class v2, Lgov/nist/javax/sip/parser/ErrorInfoParser;

    const-string v3, "Content-Language"

    const-class v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Content-Encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "e"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Content-Disposition"

    const-class v2, Lgov/nist/javax/sip/parser/ContentDispositionParser;

    const-string v3, "Call-Info"

    const-class v4, Lgov/nist/javax/sip/parser/CallInfoParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Authentication-Info"

    const-class v2, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;

    const-string v3, "Allow"

    const-class v4, Lgov/nist/javax/sip/parser/AllowParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Allow-Events"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AllowEventsParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "u"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Alert-Info"

    const-class v2, Lgov/nist/javax/sip/parser/AlertInfoParser;

    const-string v3, "Accept"

    const-class v4, Lgov/nist/javax/sip/parser/AcceptParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Refer-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "r"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SIP-ETag"

    const-class v3, Lgov/nist/javax/sip/parser/SIPETagParser;

    const-string v4, "SIP-If-Match"

    const-class v5, Lgov/nist/javax/sip/parser/SIPIfMatchParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "P-Access-Network-Info"

    const-class v3, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;

    const-string v4, "P-Asserted-Identity"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "P-Preferred-Identity"

    const-class v3, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;

    const-string v4, "P-Charging-Vector"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "P-Charging-Function-Addresses"

    const-class v3, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    const-string v4, "P-Media-Authorization"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Path"

    const-class v3, Lgov/nist/javax/sip/parser/ims/PathParser;

    const-string v4, "Privacy"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Service-Route"

    const-class v3, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;

    const-string v4, "P-Visited-Network-ID"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "P-Associated-URI"

    const-class v3, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;

    const-string v4, "P-Called-Party-ID"

    const-class v5, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Security-Server"

    const-class v3, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;

    const-string v4, "Security-Client"

    const-class v5, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "Security-Verify"

    const-class v3, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;

    const-string v4, "Referred-By"

    const-class v5, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    invoke-static {v1, v0, v3, v4, v5}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "b"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Session-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Min-SE"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Replaces"

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    const-string v3, "Join"

    const-class v4, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    invoke-static {v1, v0, v2, v3, v4}, Lgov/nist/javax/sip/parser/ParserFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    const-string v1, "References"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
