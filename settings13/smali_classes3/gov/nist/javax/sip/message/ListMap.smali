.class Lgov/nist/javax/sip/message/ListMap;
.super Ljava/lang/Object;
.source "ListMap.java"


# static fields
.field private static headerListTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 52
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    return-void
.end method

.method protected static getList(Lgov/nist/javax/sip/header/SIPHeader;)Lgov/nist/javax/sip/header/SIPHeaderList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ")",
            "Lgov/nist/javax/sip/header/SIPHeaderList<",
            "Lgov/nist/javax/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .line 170
    sget-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    if-nez v0, :cond_0

    .line 171
    invoke-static {}, Lgov/nist/javax/sip/message/ListMap;->initializeListMap()V

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 174
    sget-object v1, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 176
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lgov/nist/javax/sip/header/SIPHeader;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 181
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static hasList(Lgov/nist/javax/sip/header/SIPHeader;)Z
    .locals 2

    .line 139
    instance-of v0, p0, Lgov/nist/javax/sip/header/SIPHeaderList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 143
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static initializeListMap()V
    .locals 3

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 61
    const-class v1, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    const-class v2, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Contact;

    const-class v2, Lgov/nist/javax/sip/header/ContactList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ContentEncoding;

    const-class v2, Lgov/nist/javax/sip/header/ContentEncodingList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Via;

    const-class v2, Lgov/nist/javax/sip/header/ViaList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/WWWAuthenticate;

    const-class v2, Lgov/nist/javax/sip/header/WWWAuthenticateList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Accept;

    const-class v2, Lgov/nist/javax/sip/header/AcceptList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/AcceptEncoding;

    const-class v2, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/AcceptLanguage;

    const-class v2, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ProxyRequire;

    const-class v2, Lgov/nist/javax/sip/header/ProxyRequireList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Route;

    const-class v2, Lgov/nist/javax/sip/header/RouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Require;

    const-class v2, Lgov/nist/javax/sip/header/RequireList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Warning;

    const-class v2, Lgov/nist/javax/sip/header/WarningList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Unsupported;

    const-class v2, Lgov/nist/javax/sip/header/UnsupportedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/AlertInfo;

    const-class v2, Lgov/nist/javax/sip/header/AlertInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/CallInfo;

    const-class v2, Lgov/nist/javax/sip/header/CallInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthenticate;

    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthenticateList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ProxyAuthorization;

    const-class v2, Lgov/nist/javax/sip/header/ProxyAuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Authorization;

    const-class v2, Lgov/nist/javax/sip/header/AuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Allow;

    const-class v2, Lgov/nist/javax/sip/header/AllowList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/RecordRoute;

    const-class v2, Lgov/nist/javax/sip/header/RecordRouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ContentLanguage;

    const-class v2, Lgov/nist/javax/sip/header/ContentLanguageList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ErrorInfo;

    const-class v2, Lgov/nist/javax/sip/header/ErrorInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/Supported;

    const-class v2, Lgov/nist/javax/sip/header/SupportedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/InReplyTo;

    const-class v2, Lgov/nist/javax/sip/header/InReplyToList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    const-class v2, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    const-class v2, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/Path;

    const-class v2, Lgov/nist/javax/sip/header/ims/PathList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/Privacy;

    const-class v2, Lgov/nist/javax/sip/header/ims/PrivacyList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/ServiceRoute;

    const-class v2, Lgov/nist/javax/sip/header/ims/ServiceRouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    const-class v2, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityClient;

    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityClientList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityServer;

    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityServerList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/SecurityVerify;

    const-class v2, Lgov/nist/javax/sip/header/ims/SecurityVerifyList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lgov/nist/javax/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov/nist/javax/sip/header/ims/PAssertedIdentity;

    const-class v2, Lgov/nist/javax/sip/header/ims/PAssertedIdentityList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 131
    sput-boolean v0, Lgov/nist/javax/sip/message/ListMap;->initialized:Z

    return-void
.end method
