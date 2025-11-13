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
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/ERROR;
    .locals 19

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    sget-object v1, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    sget-object v3, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    sget-object v4, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    sget-object v6, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    sget-object v7, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    sget-object v9, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    sget-object v10, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    sget-object v11, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    sget-object v12, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    sget-object v13, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    sget-object v14, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    sget-object v15, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    sget-object v16, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    sget-object v17, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    sget-object v18, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    filled-new-array/range {v0 .. v18}, [Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "OUT_OF_MEMORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_ARGUMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_STATE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "SERVICE_NOT_CONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NO_RESPONSE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "BAD_RESPONSE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NETWORK_NOT_AVAILABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "CONTENT_NOT_AVAILABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "INVALID_DEVICE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FEATURE_NOT_SUPPORTED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "PERMISSION_NOT_ALLOWED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "TIME_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "ITEM_NOT_EXIST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "DELETED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FRAMEWORK_NOT_INSTALLED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "FAIL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    new-instance v0, Lcom/samsung/android/allshare/ERROR;

    const-string v1, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/ERROR;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    invoke-static {}, Lcom/samsung/android/allshare/ERROR;->$values()[Lcom/samsung/android/allshare/ERROR;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_0
    const-string v0, "SUCCESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_1
    const-string v0, "OUT_OF_MEMORY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->OUT_OF_MEMORY:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_2
    const-string v0, "INVALID_ARGUMENT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_ARGUMENT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_3
    const-string v0, "BAD_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->BAD_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_4
    const-string v0, "CONTENT_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->CONTENT_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_5
    const-string v0, "DELETED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->DELETED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_6
    const-string v0, "FAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_7
    const-string v0, "FEATURE_NOT_SUPPORTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_8
    const-string v0, "FRAMEWORK_NOT_INSTALLED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FRAMEWORK_NOT_INSTALLED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_9
    const-string v0, "INVALID_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_DEVICE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_a
    const-string v0, "INVALID_OBJECT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_OBJECT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_b
    const-string v0, "INVALID_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->INVALID_STATE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_c
    const-string v0, "ITEM_NOT_EXIST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_d
    const-string v0, "NETWORK_NOT_AVAILABLE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NETWORK_NOT_AVAILABLE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_e
    const-string v0, "NO_RESPONSE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NO_RESPONSE:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_f
    const-string v0, "NOT_SUPPORTED_FRAMEWORK_VERSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->NOT_SUPPORTED_FRAMEWORK_VERSION:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_10
    const-string v0, "PERMISSION_NOT_ALLOWED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->PERMISSION_NOT_ALLOWED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_11
    const-string v0, "SERVICE_NOT_CONNECTED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_12
    const-string v0, "TIME_OUT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->TIME_OUT:Lcom/samsung/android/allshare/ERROR;

    return-object v0

    :cond_13
    sget-object v0, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/ERROR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/ERROR;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/ERROR;->$VALUES:[Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/ERROR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/ERROR;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/ERROR;->enumString:Ljava/lang/String;

    return-object v0
.end method
