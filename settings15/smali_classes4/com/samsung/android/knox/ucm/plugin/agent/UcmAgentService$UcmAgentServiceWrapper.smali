.class final Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;
.super Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UcmAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/IUcmAgentService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;-><init>(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;)V

    return-void
.end method

.method private reponseUnsupportedWithBoolean()Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "booleanresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "errorresponse"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private reponseUnsupportedWithNullBytes()Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "bytearrayresponse"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "errorresponse"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method


# virtual methods
.method public APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->APDUCommand([BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->changePin(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->changePinWithPassword(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->configureCredentialStoragePlugin(ILandroid/os/Bundle;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public containsAlias(Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string p2, "containsAlias. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public decrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mdecrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public delete(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mdeleteKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p4, :cond_0

    const-string p0, "UcmAgentService"

    const-string p1, "generateKey. params is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "callerUid"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    new-instance v0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p1

    move v3, p3

    move v4, v7

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;IIZII)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setAlgorithm(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_PURPOSE:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setPurpose(I)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_RANDOMIZED_ENCRYPTION:Ljava/lang/String;

    const/4 p3, 0x1

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_EC_CURVE_NAME:Ljava/lang/String;

    const-string p3, ""

    invoke-virtual {p4, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setEcCurveName(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_BLOCK_MODES:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_DIGESTS:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setDigests([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentProviderImpl;->KEY_EXTRA_SIGNATURE_PADDINGS:Ljava/lang/String;

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setSignaturePaddings([Ljava/lang/String;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    const-string p2, "extraArgs"

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->setOptions(Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec$Builder;->build()Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Lcom/samsung/android/knox/ucm/plugin/keystore/KeyGenParameterSpec;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateKeyguardPassword(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateSecureRandom(I[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgenerateSecureRandom(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public generateWrappedDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->generateWrappedDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgetCertificateChain(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStoragePluginConfiguration(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDek()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getDek()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDetailErrorMessage(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UcmAgentService"

    const-string v0, "AbstractMethodError in getDetailErrorMessage"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInfo()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getInfo()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyType(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mgetKeyType(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinCurrentRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMaximumLength()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMaximumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMaximumRetryCount()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getKeyguardPinMinimumLength()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getKeyguardPinMinimumLength()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getStatus()Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->getStatus()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mimportKey(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mimportKeyPair(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->initKeyguardPin(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public installCertificateIfSupported(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$minstallCertificateIfSupported(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public keyguardPasswordUpdated(Z)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->keyguardPasswordUpdated(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public mac(Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mmac(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public notifyChange(ILandroid/os/Bundle;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->notifyChange(ILandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public processCommand([BLandroid/os/Bundle;I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string/jumbo p2, "processCommand. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithNullBytes()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public resetUid(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string/jumbo v0, "resetUid. Not Supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public resetUser(I)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string/jumbo v0, "resetUser. Not Supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public saw(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$msaw(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "UcmAgentService"

    const-string/jumbo p2, "setCertificateChain. Not Supported"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->reponseUnsupportedWithBoolean()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setCredentialStorageProperty(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setKeyguardPinMaximumLength(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMaximumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMaximumRetryCount(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setKeyguardPinMinimumLength(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setKeyguardPinMinimumLength(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setState(I)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->setState(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public sign(Ljava/lang/String;[BLjava/lang/String;ZLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p5}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$mencrypt(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-static {p0, p1, p2, p3, p5}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->-$$Nest$msign(Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;Ljava/lang/String;[BLjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public unwrapDek([B)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->unwrapDek([B)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPassword(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPin(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService$UcmAgentServiceWrapper;->this$0:Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ucm/plugin/agent/UcmAgentService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
