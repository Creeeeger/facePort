.class public Lgov/nist/javax/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field private static constructorArgs:[Ljava/lang/Class;

.field private static parserConstructorCache:Ljava/util/Hashtable;

.field private static parserTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lgov/nist/javax/sip/parser/HeaderParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 56
    const-class v0, Lgov/nist/javax/sip/parser/extensions/SessionExpiresParser;

    const-class v1, Lgov/nist/javax/sip/parser/AllowEventsParser;

    const-class v2, Lgov/nist/javax/sip/parser/ContentEncodingParser;

    const-class v3, Lgov/nist/javax/sip/parser/EventParser;

    const-class v4, Lgov/nist/javax/sip/parser/SubjectParser;

    const-class v5, Lgov/nist/javax/sip/parser/SupportedParser;

    const-class v6, Lgov/nist/javax/sip/parser/CallIDParser;

    const-class v7, Lgov/nist/javax/sip/parser/ContentLengthParser;

    const-class v8, Lgov/nist/javax/sip/parser/ContentTypeParser;

    const-class v9, Lgov/nist/javax/sip/parser/ContactParser;

    const-class v10, Lgov/nist/javax/sip/parser/ViaParser;

    const-class v11, Lgov/nist/javax/sip/parser/FromParser;

    const-class v12, Lgov/nist/javax/sip/parser/ToParser;

    const-class v13, Lgov/nist/javax/sip/parser/ReferToParser;

    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 57
    new-instance v14, Ljava/util/Hashtable;

    invoke-direct {v14}, Ljava/util/Hashtable;-><init>()V

    sput-object v14, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    .line 58
    sput-object v14, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    const/4 v15, 0x0

    .line 59
    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    .line 60
    sget-object v14, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v15, "Reply-To"

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    const-class v0, Lgov/nist/javax/sip/parser/ReplyToParser;

    invoke-virtual {v14, v15, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v14, "In-Reply-To"

    .line 63
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lgov/nist/javax/sip/parser/InReplyToParser;

    .line 62
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v14, "Accept-Encoding"

    .line 67
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lgov/nist/javax/sip/parser/AcceptEncodingParser;

    .line 66
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v14, "Accept-Language"

    .line 71
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-class v15, Lgov/nist/javax/sip/parser/AcceptLanguageParser;

    .line 70
    invoke-virtual {v0, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v14, "t"

    invoke-virtual {v0, v14, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v14, "To"

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v12, "From"

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v12, "f"

    invoke-virtual {v0, v12, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v11, "CSeq"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-class v12, Lgov/nist/javax/sip/parser/CSeqParser;

    invoke-virtual {v0, v11, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v11, "Via"

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v11, "v"

    invoke-virtual {v0, v11, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v10, "Contact"

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v10, "m"

    invoke-virtual {v0, v10, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v9, "Content-Type"

    .line 89
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 88
    invoke-virtual {v0, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v9, "c"

    invoke-virtual {v0, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v8, "Content-Length"

    .line 94
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-virtual {v0, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v8, "l"

    invoke-virtual {v0, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v7, "Authorization"

    .line 99
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lgov/nist/javax/sip/parser/AuthorizationParser;

    .line 98
    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v7, "WWW-Authenticate"

    .line 103
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-class v8, Lgov/nist/javax/sip/parser/WWWAuthenticateParser;

    .line 102
    invoke-virtual {v0, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v7, "Call-ID"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v7, "i"

    invoke-virtual {v0, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Route"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/RouteParser;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Record-Route"

    .line 112
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/RecordRouteParser;

    .line 111
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Date"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/DateParser;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Proxy-Authorization"

    .line 118
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/ProxyAuthorizationParser;

    .line 117
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Proxy-Authenticate"

    .line 122
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/ProxyAuthenticateParser;

    .line 121
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Retry-After"

    .line 126
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/RetryAfterParser;

    .line 125
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Require"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/RequireParser;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Proxy-Require"

    .line 132
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/ProxyRequireParser;

    .line 131
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Timestamp"

    .line 136
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/TimeStampParser;

    .line 135
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Unsupported"

    .line 140
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/UnsupportedParser;

    .line 139
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "User-Agent"

    .line 144
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lgov/nist/javax/sip/parser/UserAgentParser;

    .line 143
    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "Supported"

    .line 148
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 147
    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v6, "k"

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v5, "Server"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lgov/nist/javax/sip/parser/ServerParser;

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v5, "Subject"

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v5, "s"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Subscription-State"

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/SubscriptionStateParser;

    .line 158
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Max-Forwards"

    .line 163
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/MaxForwardsParser;

    .line 162
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "MIME-Version"

    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/MimeVersionParser;

    .line 166
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Min-Expires"

    .line 171
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/MinExpiresParser;

    .line 170
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Organization"

    .line 175
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/OrganizationParser;

    .line 174
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Priority"

    .line 179
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/PriorityParser;

    .line 178
    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "RAck"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/RAckParser;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "RSeq"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/RSeqParser;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Reason"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/ReasonParser;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Warning"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/WarningParser;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Expires"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lgov/nist/javax/sip/parser/ExpiresParser;

    invoke-virtual {v0, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "Event"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v4, "o"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v3, "Error-Info"

    .line 196
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lgov/nist/javax/sip/parser/ErrorInfoParser;

    .line 195
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v3, "Content-Language"

    .line 200
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lgov/nist/javax/sip/parser/ContentLanguageParser;

    .line 199
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v3, "Content-Encoding"

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v3, "e"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "Content-Disposition"

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lgov/nist/javax/sip/parser/ContentDispositionParser;

    .line 208
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "Call-Info"

    .line 213
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lgov/nist/javax/sip/parser/CallInfoParser;

    .line 212
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "Authentication-Info"

    .line 217
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lgov/nist/javax/sip/parser/AuthenticationInfoParser;

    .line 216
    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "Allow"

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lgov/nist/javax/sip/parser/AllowParser;

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "Allow-Events"

    .line 223
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v2, "u"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Alert-Info"

    .line 228
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AlertInfoParser;

    .line 227
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Accept"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/AcceptParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Refer-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "r"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "SIP-ETag"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SIPETagParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "SIP-If-Match"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/SIPIfMatchParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Access-Network-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAccessNetworkInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Asserted-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssertedIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Preferred-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PPreferredIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Charging-Vector"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingVectorParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Charging-Function-Addresses"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PChargingFunctionAddressesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Media-Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PMediaAuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Path"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PathParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Privacy"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PrivacyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Service-Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/ServiceRouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Visited-Network-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PVisitedNetworkIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Associated-URI"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PAssociatedURIParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "P-Called-Party-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/PCalledPartyIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Server"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityServerParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Client"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityClientParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Security-Verify"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/ims/SecurityVerifyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Referred-By"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferredByParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "b"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Session-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "x"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Min-SE"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/MinSEParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Replaces"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReplacesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "Join"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/JoinParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string v1, "References"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov/nist/javax/sip/parser/extensions/ReferencesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static createParser(Ljava/lang/String;)Lgov/nist/javax/sip/parser/HeaderParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 286
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-static {p0}, Lgov/nist/javax/sip/parser/Lexer;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 291
    sget-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    invoke-static {v0}, Lgov/nist/javax/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 294
    :try_start_0
    sget-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    if-nez v1, :cond_0

    .line 296
    sget-object v1, Lgov/nist/javax/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 297
    sget-object v3, Lgov/nist/javax/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v3, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v2

    .line 301
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgov/nist/javax/sip/parser/HeaderParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 305
    invoke-static {p0}, Lgov/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_1
    new-instance v0, Lgov/nist/javax/sip/parser/HeaderParser;

    invoke-direct {v0, p0}, Lgov/nist/javax/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 289
    :cond_2
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "The header name or value is null"

    invoke-direct {p0, v0, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
