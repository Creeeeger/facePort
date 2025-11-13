.class public final enum Lcom/samsung/android/allshare/Device$InformationType;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InformationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Device$InformationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Device$InformationType;

.field public static final enum whitelist ALL_INFO:Lcom/samsung/android/allshare/Device$InformationType;

.field public static final enum whitelist P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/Device$InformationType;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    .line 191
    new-instance v0, Lcom/samsung/android/allshare/Device$InformationType;

    const-string v1, "ALL_INFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$InformationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$InformationType;->ALL_INFO:Lcom/samsung/android/allshare/Device$InformationType;

    .line 195
    new-instance v1, Lcom/samsung/android/allshare/Device$InformationType;

    const-string v3, "P2P_MAC_ADDRESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/Device$InformationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    .line 197
    new-instance v3, Lcom/samsung/android/allshare/Device$InformationType;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/Device$InformationType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/Device$InformationType;->UNKNOWN:Lcom/samsung/android/allshare/Device$InformationType;

    .line 187
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/allshare/Device$InformationType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/allshare/Device$InformationType;->$VALUES:[Lcom/samsung/android/allshare/Device$InformationType;

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

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput-object p3, p0, Lcom/samsung/android/allshare/Device$InformationType;->enumString:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$InformationType;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 213
    if-nez p0, :cond_0

    .line 214
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->UNKNOWN:Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0

    .line 216
    :cond_0
    const-string v0, "ALL_INFO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->ALL_INFO:Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0

    .line 218
    :cond_1
    const-string v0, "P2P_MAC_ADDRESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0

    .line 220
    :cond_2
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->UNKNOWN:Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0

    .line 223
    :cond_3
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->UNKNOWN:Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$InformationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 187
    const-class v0, Lcom/samsung/android/allshare/Device$InformationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Device$InformationType;
    .locals 1

    .line 187
    sget-object v0, Lcom/samsung/android/allshare/Device$InformationType;->$VALUES:[Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Device$InformationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Device$InformationType;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/allshare/Device$InformationType;->enumString:Ljava/lang/String;

    return-object v0
.end method
