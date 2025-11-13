.class synthetic Lcom/samsung/android/allshare/DeviceImpl$2;
.super Ljava/lang/Object;
.source "DeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/DeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$allshare$Device$InformationType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 261
    invoke-static {}, Lcom/samsung/android/allshare/Device$InformationType;->values()[Lcom/samsung/android/allshare/Device$InformationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    :try_start_0
    sget-object v1, Lcom/samsung/android/allshare/Device$InformationType;->ALL_INFO:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/allshare/DeviceImpl$2;->$SwitchMap$com$samsung$android$allshare$Device$InformationType:[I

    sget-object v1, Lcom/samsung/android/allshare/Device$InformationType;->P2P_MAC_ADDRESS:Lcom/samsung/android/allshare/Device$InformationType;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device$InformationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
