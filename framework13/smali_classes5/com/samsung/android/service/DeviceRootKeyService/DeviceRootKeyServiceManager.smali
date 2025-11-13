.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;,
        Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    }
.end annotation


# static fields
.field public static final blacklist ERR_SERVICE_ERROR:I = -0x2710

.field public static final blacklist KEY_TYPE_EC:I = 0x4

.field public static final blacklist KEY_TYPE_RSA:I = 0x1

.field public static final blacklist NO_ERROR:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DEVROOT#MGR"

.field private static final blacklist VERSION:Ljava/lang/String; = "1.1.4"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 44
    const-string v0, "_nativeJni.dk.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] create DeviceRootKeyServiceManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVROOT#MGR"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method private native blacklist createServiceKeySessonInternal(Ljava/lang/String;I[B)[B
.end method

.method private native blacklist doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B
.end method

.method private native blacklist getDevInfoInternal()[B
.end method


# virtual methods
.method public blacklist createServiceKeySession(Ljava/lang/String;ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "keyType"    # I
    .param p3, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 109
    const-string v0, "DEVROOT#MGR"

    const-string v1, "createServiceKeySession() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 113
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySessonInternal(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p3}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->encodeTlv()[B

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->createServiceKeySessonInternal(Ljava/lang/String;I[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 124
    return-object v0

    .line 118
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 120
    return-object v0
.end method

.method public blacklist doSelfTestProvService(ILcom/samsung/android/service/DeviceRootKeyService/Tlv;)[B
    .locals 3
    .param p1, "keyType"    # I
    .param p2, "tlv"    # Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    .line 181
    const-string v0, "DEVROOT#MGR"

    const-string v1, "doSelfTestProvService() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/4 v0, 0x0

    const-string v1, "PROV"

    if-nez p2, :cond_0

    .line 185
    :try_start_0
    invoke-direct {p0, v1, p1, v0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->encodeTlv()[B

    move-result-object v2

    invoke-direct {p0, v1, p1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->doSelfTestProvServiceInternal(Ljava/lang/String;I[B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 192
    return-object v0
.end method

.method public blacklist getDeviceInfo(I)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
    .locals 4
    .param p1, "infoType"    # I

    .line 214
    const-string v0, "DEVROOT#MGR"

    const-string v1, "getDeviceInfo() is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    if-lez p1, :cond_2

    const/16 v2, 0xe

    if-le p1, v2, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    if-nez v2, :cond_1

    .line 221
    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    invoke-direct {p0}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->getDevInfoInternal()[B

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V

    iput-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->mTlvEx:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    .line 223
    :cond_1
    new-instance v2, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;-><init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "re":Ljava/lang/RuntimeException;
    const-string v3, "Operation failed."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 227
    return-object v1

    .line 216
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    const-string v2, "Invalid argument"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-object v1
.end method

.method public native blacklist getDeviceRootKeyCertificate(I)[B
.end method

.method public native blacklist getDeviceRootKeyUID(I)Ljava/lang/String;
.end method

.method public native blacklist isAliveDeviceRootKeyService()Z
.end method

.method public native blacklist isExistDeviceRootKey(I)Z
.end method

.method public native blacklist releaseServiceKeySession()I
.end method

.method public blacklist setDeviceRootKey([B)I
    .locals 2
    .param p1, "keyBlob"    # [B

    .line 154
    const-string v0, "DEVROOT#MGR"

    const-string/jumbo v1, "setDeviceRootKey() has been deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v0, -0x2710

    return v0
.end method
