.class public Lgov/nist/javax/sip/parser/Lexer;
.super Lgov/nist/core/LexerCore;
.source "Lexer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lgov/nist/core/LexerCore;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/parser/Lexer;->selectLexer(Ljava/lang/String;)V

    return-void
.end method

.method public static getHeaderName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, ":"

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    const/4 v2, 0x0

    .line 61
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static getHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, ":"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method


# virtual methods
.method public selectLexer(Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 92
    sget-object v2, Lgov/nist/core/LexerCore;->lexerTables:Ljava/util/Hashtable;

    monitor-enter v2

    .line 94
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    iput-object v3, v0, Lgov/nist/core/LexerCore;->currentLexer:Ljava/util/Hashtable;

    .line 95
    iput-object v1, v0, Lgov/nist/core/LexerCore;->currentLexerName:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 97
    invoke-virtual/range {p0 .. p1}, Lgov/nist/core/LexerCore;->addLexer(Ljava/lang/String;)Ljava/util/Hashtable;

    const-string v3, "method_keywordLexer"

    .line 98
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x858

    const/16 v5, 0x803

    if-eqz v3, :cond_0

    const-string v1, "REGISTER"

    const/16 v3, 0x804

    .line 99
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "ACK"

    const/16 v3, 0x806

    .line 100
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "OPTIONS"

    const/16 v3, 0x808

    .line 101
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "BYE"

    const/16 v3, 0x807

    .line 102
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "INVITE"

    const/16 v3, 0x805

    .line 103
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "sip"

    .line 104
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "sips"

    .line 105
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "SUBSCRIBE"

    const/16 v3, 0x835

    .line 106
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "NOTIFY"

    const/16 v3, 0x836

    .line 107
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "MESSAGE"

    const/16 v3, 0x846

    .line 108
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "PUBLISH"

    const/16 v3, 0x843

    .line 111
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const-string v3, "command_keywordLexer"

    .line 113
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "Error-Info"

    const/16 v3, 0x80a

    .line 114
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Allow-Events"

    const/16 v3, 0x841

    .line 116
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Authentication-Info"

    const/16 v4, 0x840

    .line 118
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Event"

    const/16 v4, 0x83f

    .line 120
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Min-Expires"

    const/16 v5, 0x83e

    .line 121
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "RSeq"

    const/16 v5, 0x83c

    .line 123
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "RAck"

    const/16 v5, 0x83d

    .line 124
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Reason"

    const/16 v5, 0x83b

    .line 125
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Reply-To"

    const/16 v5, 0x83a

    .line 127
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Subscription-State"

    const/16 v5, 0x838

    .line 129
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Timestamp"

    const/16 v5, 0x837

    .line 131
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "In-Reply-To"

    const/16 v5, 0x80b

    .line 133
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "MIME-Version"

    const/16 v5, 0x80c

    .line 135
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Alert-Info"

    const/16 v5, 0x80d

    .line 137
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "From"

    const/16 v5, 0x80e

    .line 139
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "To"

    const/16 v6, 0x80f

    .line 140
    invoke-virtual {v0, v1, v6}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Refer-To"

    const/16 v7, 0x842

    .line 141
    invoke-virtual {v0, v1, v7}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Via"

    const/16 v8, 0x810

    .line 143
    invoke-virtual {v0, v1, v8}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "User-Agent"

    const/16 v9, 0x811

    .line 144
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Server"

    const/16 v9, 0x812

    .line 146
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Accept-Encoding"

    const/16 v9, 0x813

    .line 148
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Accept"

    const/16 v9, 0x814

    .line 150
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Allow"

    const/16 v10, 0x815

    .line 152
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Route"

    const/16 v10, 0x816

    .line 153
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Authorization"

    const/16 v10, 0x817

    .line 154
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Proxy-Authorization"

    const/16 v10, 0x818

    .line 156
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Retry-After"

    const/16 v10, 0x819

    .line 158
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Proxy-Require"

    const/16 v10, 0x81a

    .line 160
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Content-Language"

    const/16 v10, 0x81b

    .line 162
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Unsupported"

    const/16 v10, 0x81c

    .line 164
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Supported"

    .line 166
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Warning"

    const/16 v10, 0x81e

    .line 168
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Max-Forwards"

    const/16 v10, 0x81f

    .line 170
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Date"

    const/16 v10, 0x820

    .line 172
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Priority"

    const/16 v10, 0x821

    .line 173
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Proxy-Authenticate"

    const/16 v10, 0x822

    .line 175
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Content-Encoding"

    const/16 v10, 0x823

    .line 177
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Content-Length"

    const/16 v11, 0x824

    .line 179
    invoke-virtual {v0, v1, v11}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Subject"

    const/16 v12, 0x825

    .line 181
    invoke-virtual {v0, v1, v12}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Content-Type"

    const/16 v13, 0x826

    .line 183
    invoke-virtual {v0, v1, v13}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Contact"

    const/16 v14, 0x827

    .line 185
    invoke-virtual {v0, v1, v14}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Call-ID"

    const/16 v15, 0x828

    .line 187
    invoke-virtual {v0, v1, v15}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Require"

    const/16 v4, 0x829

    .line 189
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Expires"

    const/16 v4, 0x82a

    .line 191
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Record-Route"

    const/16 v4, 0x82c

    .line 193
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Organization"

    const/16 v4, 0x82d

    .line 195
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "CSeq"

    const/16 v4, 0x82e

    .line 197
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Accept-Language"

    const/16 v4, 0x82f

    .line 198
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "WWW-Authenticate"

    const/16 v4, 0x830

    .line 200
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Call-Info"

    const/16 v4, 0x833

    .line 202
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Content-Disposition"

    const/16 v4, 0x834

    .line 204
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "K"

    .line 207
    invoke-virtual {v0, v1, v9}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "C"

    .line 208
    invoke-virtual {v0, v1, v13}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "E"

    .line 210
    invoke-virtual {v0, v1, v10}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "F"

    .line 212
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "I"

    .line 213
    invoke-virtual {v0, v1, v15}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "M"

    .line 214
    invoke-virtual {v0, v1, v14}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "L"

    .line 215
    invoke-virtual {v0, v1, v11}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "S"

    .line 217
    invoke-virtual {v0, v1, v12}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "T"

    .line 218
    invoke-virtual {v0, v1, v6}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "U"

    .line 219
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "V"

    .line 221
    invoke-virtual {v0, v1, v8}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "R"

    .line 222
    invoke-virtual {v0, v1, v7}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "O"

    const/16 v3, 0x83f

    .line 223
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "X"

    const/16 v3, 0x855

    .line 228
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "SIP-ETag"

    const/16 v4, 0x844

    .line 231
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "SIP-If-Match"

    const/16 v4, 0x845

    .line 233
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Session-Expires"

    .line 237
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Min-SE"

    const/16 v3, 0x856

    .line 239
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Referred-By"

    const/16 v3, 0x854

    .line 241
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Replaces"

    const/16 v3, 0x857

    .line 245
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Join"

    const/16 v3, 0x85c

    .line 248
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Path"

    const/16 v3, 0x847

    .line 252
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Service-Route"

    const/16 v3, 0x848

    .line 253
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Asserted-Identity"

    const/16 v3, 0x849

    .line 255
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Preferred-Identity"

    const/16 v3, 0x84a

    .line 257
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Privacy"

    const/16 v3, 0x84e

    .line 259
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Called-Party-ID"

    const/16 v3, 0x850

    .line 263
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Associated-URI"

    const/16 v3, 0x851

    .line 265
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Visited-Network-ID"

    const/16 v3, 0x84b

    .line 267
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Charging-Function-Addresses"

    const/16 v3, 0x84c

    .line 269
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Charging-Vector"

    const/16 v3, 0x84d

    .line 271
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Access-Network-Info"

    const/16 v3, 0x84f

    .line 273
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Media-Authorization"

    const/16 v3, 0x852

    .line 275
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Security-Server"

    const/16 v3, 0x859

    .line 278
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Security-Verify"

    const/16 v3, 0x85b

    .line 280
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "Security-Client"

    const/16 v3, 0x85a

    .line 282
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-User-Database"

    const/16 v3, 0x85d    # 3.0E-42f

    .line 286
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Profile-Key"

    const/16 v3, 0x85e

    .line 290
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Served-User"

    const/16 v3, 0x85f

    .line 294
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Preferred-Service"

    const/16 v3, 0x860

    .line 298
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "P-Asserted-Service"

    const/16 v3, 0x861

    .line 302
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "References"

    const/16 v3, 0x862

    .line 306
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string v3, "status_lineLexer"

    .line 311
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "sip"

    .line 312
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v3, "request_lineLexer"

    .line 313
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "sip"

    .line 314
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v3, "sip_urlLexer"

    .line 315
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "tel"

    const/16 v3, 0x839

    .line 316
    invoke-virtual {v0, v1, v3}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "sip"

    .line 317
    invoke-virtual {v0, v1, v5}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    const-string v1, "sips"

    .line 318
    invoke-virtual {v0, v1, v4}, Lgov/nist/core/LexerCore;->addKeyword(Ljava/lang/String;I)V

    .line 321
    :cond_4
    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
