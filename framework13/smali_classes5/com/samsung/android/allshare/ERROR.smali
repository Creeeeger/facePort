.class public final enum Lcom/samsung/android/allshare/ERROR;
.super Ljava/lang/Enum;
.source "ERROR.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/ERROR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist DELETED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist FAIL:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist SUCCESS:Lcom/samsung/android/allshare/ERROR;

.field public static final enum whitelist TIME_OUT:Lcom/samsung/android/allshare/ERROR;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 28
    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    .line 34
    new-instance v1, Lcom/samsung/android/allshare/ERROR;

    const-string v3, "OUT_OF_MEMORY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    .line 40
    new-instance v3, Lcom/samsung/android/allshare/ERROR;

    const-string v5, "INVALID_ARGUMENT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    .line 46
    new-instance v5, Lcom/samsung/android/allshare/ERROR;

    const-string v7, "INVALID_OBJECT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    .line 51
    new-instance v7, Lcom/samsung/android/allshare/ERROR;

    const-string v9, "INVALID_STATE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    .line 59
    new-instance v9, Lcom/samsung/android/allshare/ERROR;

    const-string v11, "SERVICE_NOT_CONNECTED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    .line 65
    new-instance v11, Lcom/samsung/android/allshare/ERROR;

    const-string v13, "NO_RESPONSE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 72
    new-instance v13, Lcom/samsung/android/allshare/ERROR;

    const-string v15, "BAD_RESPONSE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    .line 78
    new-instance v15, Lcom/samsung/android/allshare/ERROR;

    const-string v14, "NETWORK_NOT_AVAILABLE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    .line 83
    new-instance v14, Lcom/samsung/android/allshare/ERROR;

    const-string v12, "CONTENT_NOT_AVAILABLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    .line 89
    new-instance v12, Lcom/samsung/android/allshare/ERROR;

    const-string v10, "INVALID_DEVICE"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v10}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    .line 95
    new-instance v10, Lcom/samsung/android/allshare/ERROR;

    const-string v8, "FEATURE_NOT_SUPPORTED"

    const/16 v6, 0xb

    const-string v4, "FEATURE_NOT_SUPPORTED"

    invoke-direct {v10, v8, v6, v4}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    .line 100
    new-instance v4, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "PERMISSION_NOT_ALLOWED"

    const/16 v8, 0xc

    const-string v2, "PERMISSION_NOT_ALLOWED"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    .line 105
    new-instance v2, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "TIME_OUT"

    const/16 v8, 0xd

    move-object/from16 v16, v4

    const-string v4, "TIME_OUT"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    .line 111
    new-instance v4, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "ITEM_NOT_EXIST"

    const/16 v8, 0xe

    move-object/from16 v17, v2

    const-string v2, "ITEM_NOT_EXIST"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    .line 117
    new-instance v2, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "DELETED"

    const/16 v8, 0xf

    move-object/from16 v18, v4

    const-string v4, "DELETED"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    .line 122
    new-instance v4, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "FRAMEWORK_NOT_INSTALLED"

    const/16 v8, 0x10

    move-object/from16 v19, v2

    const-string v2, "FRAMEWORK_NOT_INSTALLED"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    .line 127
    new-instance v2, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "FAIL"

    const/16 v8, 0x11

    move-object/from16 v20, v4

    const-string v4, "FAIL"

    invoke-direct {v2, v6, v8, v4}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 133
    new-instance v4, Lcom/samsung/android/allshare/ERROR;

    const-string v6, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    const/16 v8, 0x12

    move-object/from16 v21, v2

    const-string v2, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-direct {v4, v6, v8, v2}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    .line 23
    const/16 v2, 0x13

    new-array v2, v2, [Lcom/samsung/android/allshare/ERROR;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v4, v2, v0

    sput-object v2, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 140
    iput-object p3, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 152
    if-nez p0, :cond_0

    .line 153
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 155
    :cond_0
    const-string v0, "SUCCESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 157
    :cond_1
    const-string v0, "OUT_OF_MEMORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 159
    :cond_2
    const-string v0, "INVALID_ARGUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 161
    :cond_3
    const-string v0, "BAD_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 162
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 163
    :cond_4
    const-string v0, "CONTENT_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 164
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 165
    :cond_5
    const-string v0, "DELETED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 166
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 167
    :cond_6
    const-string v0, "FAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 168
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 169
    :cond_7
    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 171
    :cond_8
    const-string v0, "FRAMEWORK_NOT_INSTALLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 172
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 173
    :cond_9
    const-string v0, "INVALID_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 174
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 175
    :cond_a
    const-string v0, "INVALID_OBJECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 177
    :cond_b
    const-string v0, "INVALID_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 178
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 179
    :cond_c
    const-string v0, "ITEM_NOT_EXIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 180
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 181
    :cond_d
    const-string v0, "NETWORK_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 182
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 183
    :cond_e
    const-string v0, "NO_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 184
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 185
    :cond_f
    const-string v0, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 187
    :cond_10
    const-string v0, "PERMISSION_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 188
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 189
    :cond_11
    const-string v0, "SERVICE_NOT_CONNECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 190
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 191
    :cond_12
    const-string v0, "TIME_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 192
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    .line 194
    :cond_13
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 23
    const-class v0, Lcom/samsung/android/allshare/ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/ERROR;
    .locals 1

    .line 23
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    return-object v0
.end method
