.class public Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;,
        Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUri;
    }
.end annotation


# static fields
.field public static final AGENT_CONFIGURATORLIST:Ljava/lang/String; = "configuratorList"

.field public static final AGENT_ENFORCEMANAGEMENT:Ljava/lang/String; = "enforceManagement"

.field public static final AGENT_ID:Ljava/lang/String; = "id"

.field public static final AGENT_ISDETACHABLE:Ljava/lang/String; = "isDetachable"

.field public static final AGENT_ISHARDWAREBACKED:Ljava/lang/String; = "isHardwareBacked"

.field public static final AGENT_ISMANAGEABLE:Ljava/lang/String; = "isManageable"

.field public static final AGENT_ISREADONLY:Ljava/lang/String; = "isReadOnly"

.field public static final AGENT_IS_GENERATE_PASSWORD_AVAILABLE:Ljava/lang/String; = "isGeneratePasswordAvailable"

.field public static final AGENT_IS_ODE_SUPPORTED:Ljava/lang/String; = "isODESupport"

.field public static final AGENT_IS_PUK_SUPPORTED:Ljava/lang/String; = "isPUKSupported"

.field public static final AGENT_IS_SUPPORT_BIOMETRIC_FOR_UCM:Ljava/lang/String; = "isSupportBiometricForUCM"

.field public static final AGENT_IS_SUPPORT_CHANGE_PIN:Ljava/lang/String; = "isSupportChangePin"

.field public static final AGENT_IS_SUPPORT_CHANGE_PIN_WITH_PASSWORD:Ljava/lang/String; = "isSupportChangePinWithPassword"

.field public static final AGENT_PACKAGENAME:Ljava/lang/String; = "packageName"

.field public static final AGENT_REQUSERVERIFICATION:Ljava/lang/String; = "reqUserVerification"

.field public static final AGENT_STORAGE_TYPE:Ljava/lang/String; = "storageType"

.field public static final AGENT_SUMMARY:Ljava/lang/String; = "summary"

.field public static final AGENT_TITLE:Ljava/lang/String; = "title"

.field public static final AGENT_VENDORID:Ljava/lang/String; = "vendorId"

.field public static final CACERT_ENTRY_TYPE:I = 0x4

.field public static final CCM_SOURCE:Ljava/lang/String; = "CCM"

.field public static final DBG:Z = true

.field public static final EVENT_FACTORY_RESET:I = 0x65

.field public static final INVALID_RESOURCE:I = -0x1

.field public static final INVALID_UID:I = -0x1

.field public static final KNOX_SOURCE:Ljava/lang/String; = "KNOX"

.field public static final ODE_ENABLED:Ljava/lang/String; = "odeEnabled"

.field public static final ODE_SIGNATURE:Ljava/lang/String; = "odeSignature"

.field public static final PRIVATEKEY_ENTRY_TYPE:I = 0x1

.field public static final SECRETKEY_ENTRY_TYPE:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "com.samsung.ucs.ucsservice"

.field public static final TAG:Ljava/lang/String; = "UniversalCredentialUtil"

.field public static final UCM_VERSION_1:Ljava/lang/String; = "v1"

.field public static final UCM_VERSION_2:Ljava/lang/String; = "v2"

.field public static final UCS_ALL_RESOURCE:I = 0x4

.field public static final UCS_KEYCHAIN_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field public static final UCS_PRIVATE_KEYCHAIN_RESOURCE:I = 0x2

.field public static final UCS_PUBLIC_KEYCHAIN_RESOURCE:I = 0x1

.field public static final UCS_SCHEME:Ljava/lang/String; = "ucmkeychain"

.field public static final UCS_SSL_ENGINE:Ljava/lang/String; = "ucsengine"

.field public static final UCS_WIFI_KEYCHAIN_RESOURCE:I = 0x3

.field public static final UID_SELF:I = -0x1

.field public static final UNIQUE_ID:Ljava/lang/String; = "uniqueId"


# instance fields
.field public final mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
    .locals 2

    const-string v0, "com.samsung.ucs.ucsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;

    invoke-direct {v1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;-><init>(Lcom/samsung/android/knox/ucm/core/IUcmService;)V

    return-object v1
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getKeychainUri(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUser(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRawAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "resource:"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v1, ""

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "v1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p0, "UniversalCredentialUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Source is not known. Invalid URI."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUCMVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "v1"

    return-object v0
.end method

.method public static getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "v1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static isKeyChainUri(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string/jumbo v1, "ucmkeychain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public static isUcsStoreUri(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string/jumbo v1, "ucmkeychain"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public static isValidUri(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->isKeyChainUri(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.APDUCommand"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "APDUCommand"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "binder is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->APDUCommand(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public addUcmProvider()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v0, "UniversalCredentialUtil.addUcmProvider"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string p0, "UniversalCredentialUtil"

    const-string v0, "addUcmProvider"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->addUcmProvider()V

    return-void
.end method

.method public changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.changePin"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "...changePin"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "binder is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->changePin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public delete(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "UCMERRORTESTING: @UniversalCredentialUtil responding to delete with error code  = "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->delete(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "response is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "errorresponse"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string p1, "Cannot connect to service"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKey(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyPairInternal(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateSecureRandom(Ljava/lang/String;I[B)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    const-string v0, "Credential Manager calling getCertificateChain for "

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v0, p1, v1}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getCertificateChain(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "parcel is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mResult:I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/ucmRetParcelable;->mData:[B

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "errorresponse"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "bytearrayresponse"

    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :goto_0
    const-string p1, "Cannot connect to service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getFriendlyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "title"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "UniversalCredentialUtil.getInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "getInfo"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "binder is null"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getKeyType(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyType(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string v0, "Cannot connect to service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Credential Manager calling getPrivateKey for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getCertificateChain(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "errorresponse"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "bytearrayresponse"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/ucm/keystore/UcmKeyStoreKeyFactory;->getPrivateKey(Ljava/lang/String;[B)Lcom/samsung/ucm/keystore/UcmKeyStorePrivateKey;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v1, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;
    .locals 2

    new-instance p0, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DETAILED agentInfo information for provider: AGENT_ID = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AGENT_SUMMARY = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "summary"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AGENT_TITLE = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "title"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AGENT_VENDORID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "vendorId"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AGENT_ISDETACHABLE = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isDetachable"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AGENT_PACKAGENAME = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v0, "UniversalCredentialUtil"

    invoke-static {p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getProviders()[Ljava/security/Provider;
    .locals 8

    const-string v0, "getProviders"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->listProviders()[Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-eqz v3, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    const-string/jumbo v7, "uniqueId"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v6, "NULL agent ID name Returned for bundle"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getProviderInfo(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/knox/ucm/core/jcajce/UcmKeystoreProvider;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/security/Provider;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/security/Provider;

    return-object p0

    :cond_2
    const-string p0, "Provider list is empty"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    const-string v2, "Cannot connect to service"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getSecretKey(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Credential Manager calling getSecretKey for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UniversalCredentialUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;

    invoke-direct {p0, p1, p2}, Lcom/samsung/ucm/keystore/UcmKeyStoreSecretKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public grantKeychainAccess(Ljava/lang/String;I)Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->grantKeyChainAccess(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "UniversalCredentialUtil"

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->importKey(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to service"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "UCMERRORTESTING: @UniversalCredentialUtil responding to importKey "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string/jumbo p2, "null"

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Not null, error code = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "errorresponse"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "UniversalCredentialUtil"

    const-string v1, "UCMERRORTESTING: @UniversalCredentialUtil responding to importKeyPair with error code  = "

    const/4 v2, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->importKeyPair(Ljava/lang/String;[B[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "response is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "errorresponse"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string p1, "Cannot connect to service"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public notifyPluginResult(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "notifyPluginResult"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez p0, :cond_0

    const-string p0, "UCM Service is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyPluginResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Cannot connect to service"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public refreshUCMPlugin()V
    .locals 2

    const-string/jumbo v0, "refreshUCMPlugin"

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    if-nez p0, :cond_0

    const-string p0, "UCM Service is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Cannot connect to service"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public saw(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3

    const-string v0, "UCMERRORTESTING: @UniversalCredentialUtil responding to saw with error code  = "

    const-string v1, "Credential Manager calling saw for "

    const-string v2, "UniversalCredentialUtil"

    invoke-static {v1, p1, v2}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "response is null"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "errorresponse"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    const-string p1, "Cannot connect to service"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public setCertificateChain(Ljava/lang/String;[B)Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->mBinder:Lcom/samsung/android/knox/ucm/core/IUcmService;

    invoke-interface {p0, p1, p2, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->setCertificateChain(Ljava/lang/String;[BLandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UniversalCredentialUtil"

    const-string p2, "Cannot connect to service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
