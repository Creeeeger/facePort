.class public final enum Lcom/samsung/android/allshare/Device$DeviceDomain;
.super Ljava/lang/Enum;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceDomain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/Device$DeviceDomain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum whitelist LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum whitelist MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum whitelist REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 4

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v2, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    sget-object v3, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    filled-new-array {v0, v1, v2, v3}, [Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "MY_DEVICE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "LOCAL_NETWORK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "REMOTE_NETWORK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    new-instance v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/Device$DeviceDomain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    invoke-static {}, Lcom/samsung/android/allshare/Device$DeviceDomain;->$values()[Lcom/samsung/android/allshare/Device$DeviceDomain;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

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

    iput-object p3, p0, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumString:Ljava/lang/String;

    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    if-nez p0, :cond_0

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_0
    const-string v0, "LOCAL_NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->LOCAL_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_1
    const-string v0, "MY_DEVICE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->MY_DEVICE:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_2
    const-string v0, "REMOTE_NETWORK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->REMOTE_NETWORK:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_3
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0

    :cond_4
    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/Device$DeviceDomain;
    .locals 1

    sget-object v0, Lcom/samsung/android/allshare/Device$DeviceDomain;->$VALUES:[Lcom/samsung/android/allshare/Device$DeviceDomain;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/Device$DeviceDomain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/Device$DeviceDomain;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/Device$DeviceDomain;->enumString:Ljava/lang/String;

    return-object v0
.end method
