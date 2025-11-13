.class public Lcom/samsung/android/knox/application/ApplicationPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_APPLICATION_FOCUS_CHANGE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.APPLICATION_FOCUS_CHANGE"

.field public static final ACTION_APP_AUTHORIZATION_SCOPES_CHANGED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.APP_AUTHORIZATION_SCOPES_CHANGED"

.field public static final ACTION_EDM_FORCE_LAUNCHER_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_FORCE_LAUNCHER_REFRESH_INTERNAL"

.field public static final ACTION_EDM_UNINSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

.field public static final ACTION_PREVENT_APPLICATION_START:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PREVENT_APPLICATION_START"

.field public static final ACTION_PREVENT_APPLICATION_STOP:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PREVENT_APPLICATION_STOP"

.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final APPLICATION_UNINSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_UNINSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final AUTHORIZATION_PROVISION_CERT_ACME_SCEP:Ljava/lang/String; = "authorization_provision_cert_acme_scep"

.field public static final AUTHORIZATION_REMOTE_CONTROL:Ljava/lang/String; = "authorization_remote_control"

.field public static final DEFAULT_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final DEFAULT_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field public static final DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

.field public static final DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

.field public static final ERROR_CALLER_TARGET_SDK_NOT_SUPPORTED:I = -0x4

.field public static final ERROR_INVALID_INPUT:I = -0x1

.field public static final ERROR_INVALID_SCOPE:I = -0x7

.field public static final ERROR_MULTI_ADMIN:I = -0x5

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PROXY_NOT_INSTALLED:I = -0x5

.field public static final ERROR_PROXY_NO_ADMIN_RECEIVER:I = -0x6

.field public static final ERROR_SIGNATURE_MISMATCH:I = -0x3

.field public static final ERROR_UNKNOWN:I = -0x2

.field public static final EXTRA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ADMIN_PACKAGE_NAME"

.field public static final EXTRA_APPLICATION_FOCUS_COMPONENT_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_COMPONENT_NAME"

.field public static final EXTRA_APPLICATION_FOCUS_DEX_MODE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_DEX_MODE"

.field public static final EXTRA_APPLICATION_FOCUS_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_STATUS"

.field public static final EXTRA_APPLICATION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_PACKAGE_NAME"

.field public static final EXTRA_AUTHORIZATION_SCOPES:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.AUTHORIZATION_SCOPES"

.field public static final EXTRA_ERROR_CLASS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_CLASS"

.field public static final EXTRA_ERROR_REASON:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_REASON"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID"

.field public static final FLAG_ALLOW_PROXY_FOR_PFW:I = 0x1

.field public static final LAUNCHER_TASK:Landroid/content/Intent;

.field public static final NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field public static final OPEN_DIALER_TASK:Landroid/content/Intent;

.field public static final OPEN_PDF_TASK:Landroid/content/Intent;

.field public static final OPEN_URL_TASK:Landroid/content/Intent;

.field public static final PERMISSION_POLICY_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_POLICY_STATE_DENY:I = 0x2

.field public static final PERMISSION_POLICY_STATE_GRANT:I = 0x1

.field public static final PKGINFO_SIGNATURE:Ljava/lang/String; = "package-app-signature"

.field public static final PKGINFO_VERSION:Ljava/lang/String; = "package-app-version-code"

.field public static final PLAY_AUDIO_TASK:Landroid/content/Intent;

.field public static final PLAY_VIDEO_TASK:Landroid/content/Intent;

.field public static final PROXY_FLAGS:Ljava/lang/String; = "proxy-flags"

.field public static final SMS_MMS_TASK:Landroid/content/Intent;

.field public static TAG:Ljava/lang/String; = "ApplicationPolicy"

.field public static final TYPE_APPROVED_APP_INSTALLER:I = 0x1

.field public static final TYPE_CALL_RECORDING:I = 0x3

.field public static final TYPE_EXTERNAL_STORAGE_ACCESS:I = 0x2


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field public mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

.field public mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field public mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createSmsMmsTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->SMS_MMS_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createLauncherTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->LAUNCHER_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenURLTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_URL_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenPDFTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_PDF_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenDialerTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_DIALER_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAudioTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_AUDIO_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createVideoTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_VIDEO_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistActivityTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistServiceTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/application/IApplicationPolicy;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/application/ApplicationPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/application/ApplicationPolicy$1;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;Lcom/samsung/android/knox/ExternalDependencyInjector;)V

    iput-object p3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-void
.end method

.method public static createAssistActivityTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAssistServiceTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAudioTask()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "content://audio.mp3"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createLauncherTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createOpenDialerTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createOpenPDFTask()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "file.pdf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createOpenURLTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createSmsMmsTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static createVideoTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToWhiteList(String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToWhiteList(String, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addAppPackageNameToWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string p2, ".*"

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addAppPackageNameToWhiteList: failed to add .*"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.addAppPermissionToBlackList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPermissionToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.addAppSignatureToBlackList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.addAppSignatureToWhiteList(String)"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppSignatureToWhiteList(String, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addAppSignatureToWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string p2, "*"

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addAppSignatureToWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addApplicationToCameraAllowList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 1

    const-string v0, "ApplicationPolicy.addAppSignatureToCameraAllowList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addApplicationToCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.addHomeShortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed addHomeShorcut!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addNewAdminActivationAppWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addNewAdminActivationAppWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed addNewAdminActivationAppWhiteList"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToBatteryOptimizationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with ApplicationPolicy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public addPackageToBlackList(ILcom/samsung/android/knox/AppIdentity;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackageToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public addPackageToWhiteList(ILcom/samsung/android/knox/AppIdentity;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackageToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToClearCacheWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToClearDataBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToClearDataWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToDisableClipboardBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToDisableClipboardWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList(List<String>"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToDisableClipboardWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToDisableClipboardBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addPackagesToDisableUpdateBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToDisableUpdateWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToDisableUpdateWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToPermissionWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToDisableUpdateBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addPackagesToFocusMonitoringList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToPermissionWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addPackagesToForceStopWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addPackagesToNotificationBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToNotificationWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToNotificationWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToNotificationBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addPackagesToNotificationWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addPackagesToPreventStartBlackList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetWhiteList(List<String>)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "addPackagesToWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetWhiteList(List<String>, boolean)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToWidgetWhiteList -> Adding Star in BlackList"

    invoke-static {p2, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToWidgetBlackList(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "ApplicationPolicy.addPackagesToWidgetWhiteList: failed to add *"

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v2, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    return v0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v0
.end method

.method public addUsbDevicesForDefaultAccess(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addUsbDevicesForDefaultAccess"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public applyRuntimePermissions(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/AppIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "applyRuntimePermissions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "ApplicationPolicy.applyRuntimePermissions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, -0x2

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "applyRuntimePermissions : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applyRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 4

    const-string v0, "changeApplicationIcon: Icon size is too big :"

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "changeApplicationIcon"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "changeApplicationIcon:packageName "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "ApplicationPolicy.changeApplicationIcon"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    array-length v1, p2

    const/high16 v3, 0x100000

    if-le v1, v3, :cond_0

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationIcon(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :goto_0
    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v2
.end method

.method public changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "changeApplicationName"

    const-string v2, "ApplicationPolicy.changeApplicationName"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final checkPathAccessSecured(Ljava/lang/String;)V
    .locals 10

    :try_start_0
    const-string p0, "/sdcard/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "a insecure file path"

    const-string v1, "Application installed from "

    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "ApplicationPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    sget v2, Landroid/system/OsConstants;->S_IWOTH:I

    iget v3, p0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v3}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget p0, p0, Landroid/system/StructStat;->st_mode:I

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "ApplicationPolicy"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public clearAppPackageNameFromList()Z
    .locals 6

    const-string v0, "ApplicationPolicy.clearAppPackageNameFromList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    move v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    move v4, v2

    :cond_5
    return v4
.end method

.method public clearAppSignatureFromList()Z
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearAppSignatureFromList "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppSignaturesBlackList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppSignaturesWhiteList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    array-length v4, v0

    move v5, v2

    move v6, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v7, v0, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    move v6, v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v6, v3

    :cond_2
    if-eqz v1, :cond_4

    array-length v0, v1

    move v4, v2

    move v5, v3

    :goto_1
    if-ge v4, v0, :cond_5

    aget-object v7, v1, v4

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppSignatureFromWhiteList(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v5, v3

    :cond_5
    if-eqz v6, :cond_6

    if-eqz v5, :cond_6

    move v2, v3

    :cond_6
    return v2
.end method

.method public clearDisableClipboardBlackList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearDisableClipboardWhiteList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearDisableUpdateBlackList()Z
    .locals 2

    const-string v0, "ApplicationPolicy.clearDisableUpdateBlackList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearDisableUpdateWhiteList()Z
    .locals 2

    const-string v0, "ApplicationPolicy.clearDisableUpdateWhiteList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearFocusMonitoringList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearFocusMonitoringList"

    const-string v2, "ApplicationPolicy.clearFocusMonitoringList"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearNewAdminActivationAppWhiteList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearNewAdminActivationAppWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed clearNewAdminActivationAppWhiteList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearPackagesFromDisableClipboardList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearPackagesFromDisableClipboardList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromDisableClipboardList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableClipboardBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableClipboardWhiteList()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearPackagesFromDisableUpdateList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromDisableUpdateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableUpdateBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableUpdateWhiteList()Z

    move-result p0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearPackagesFromForceStopList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearPackagesFromForceStopList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromForceStopList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromForceStopBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromForceStopWhiteList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopWhiteList(Ljava/util/List;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public clearPackagesFromNotificationList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearPackagesFromNotificationList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromNotificationList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromNotificationBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromNotificationWhiteList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromNotificationBlackList(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromNotificationWhiteList(Ljava/util/List;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public clearPackagesFromWidgetList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearPackagesFromWidgetList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromWidgetList "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromWidgetBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromWidgetWhiteList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromWidgetBlackList(Ljava/util/List;)Z

    move-result v0

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromWidgetWhiteList(Ljava/util/List;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2
.end method

.method public clearPreventStartBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "clearPreventStartBlackList"

    const-string v2, "ApplicationPolicy.clearPreventStartBlackList"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public clearUsbDevicesForDefaultAccess(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearUsbDevicesForDefaultAccess"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.deleteHomeShortcut"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed deleteHomeShorcut!!!"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public disableAndroidBrowser()V
    .locals 2

    const-string v0, "ApplicationPolicy.disableAndroidBrowser"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.browser.provider"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "set all browser as disable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableAndroidMarket()V
    .locals 2

    const-string v0, "ApplicationPolicy.disableAndroidMarket"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disableVoiceDialer()V
    .locals 2

    const-string v0, "ApplicationPolicy.disableVoiceDialer"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.android.voicedialer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public disableYouTube()V
    .locals 2

    const-string v0, "ApplicationPolicy.disableYouTube"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public doSelfUninstall()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "doSelfUninstall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->doSelfUninstall(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking to ApplicationPolicy service"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableAndroidBrowser()V
    .locals 2

    const-string v0, "ApplicationPolicy.enableAndroidBrowser"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.android.browser"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.browser.provider"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "set all browser as enable"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    const-string v0, "ApplicationPolicy.enableAndroidMarket"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableVoiceDialer()V
    .locals 2

    const-string v0, "ApplicationPolicy.enableVoiceDialer"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.android.voicedialer"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableYouTube()V
    .locals 2

    const-string v0, "ApplicationPolicy.enableYouTube"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getAddHomeShorcutRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAddHomeShorcutRequested()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking to ApplicationPolicy service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAllAppLastUsage()[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getAllAppLastUsage"

    const-string v2, "ApplicationPolicy.getAllAppLastUsage"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllAppLastUsage(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    return-object p0
.end method

.method public getAllDefaultApplications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getAllDefaultApplications"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking to ApplicationPolicy service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-interface {p0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v0, v0, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getAllWidgets"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllWidgets(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAppSignaturesAllWhiteLists()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignatureBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getAppSignaturesWhiteList()[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesWhiteList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationCacheSize"

    const-string v2, "ApplicationPolicy.getApplicationCacheSize"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCacheSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationCodeSize"

    const-string v2, "ApplicationPolicy.getApplicationCodeSize"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCodeSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationComponentState(Landroid/content/ComponentName;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationCpuUsage"

    const-string v2, "ApplicationPolicy.getApplicationCpuUsage"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCpuUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationDataSize"

    const-string v2, "ApplicationPolicy.getApplicationDataSize"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationDataSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ApplicationPolicy.getApplicationGrantedPermissions"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationInstallationMode()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationMemoryUsage"

    const-string v2, "ApplicationPolicy.getApplicationMemoryUsage"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationMemoryUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationName"

    const-string v2, "ApplicationPolicy.getApplicationName"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "getCustomApplicationName: Failed talking with Application control policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-object v1
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationNetworkStats"

    const-string v2, "ApplicationPolicy.getApplicationNetworkStats"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getNetworkStats(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationNotificationMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationNotificationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getApplicationNotificationModeAsUser(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getApplicationPackagesFromCameraAllowList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationPackagesFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0}, Lcom/samsung/android/knox/EdmUtils;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0

    invoke-interface {v0, v1, p1, p2, p0}, Lcom/samsung/android/knox/ExternalDependencyInjector;->getApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to Device Policy Manager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/appconfig/ApplicationRestrictionsManager;->getApplicationRestrictions(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateList(Lcom/samsung/android/knox/ContextInfo;Z)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationTotalSize"

    const-string v2, "ApplicationPolicy.getApplicationTotalSize"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationTotalSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getApplicationUid(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationUid"

    const-string v2, "ApplicationPolicy.getApplicationUid"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationUninstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationUninstallationMode()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationUninstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationVersion"

    const-string v2, "ApplicationPolicy.getApplicationVersion"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationVersionCode(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getApplicationVersionCode"

    const-string v2, "ApplicationPolicy.getApplicationVersionCode"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersionCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getAuthorizedScopes(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getAuthorizedScopes"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "ApplicationPolicy.getAuthorizedScopes"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAuthorizedScopes(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with enterprise policy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvgNoAppUsagePerMonth()[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "AppInfoLastUsage"

    const-string v2, "ApplicationPolicy.getAvgNoAppUsagePerMonth"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAvgNoAppUsagePerMonth(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    return-object p0
.end method

.method public getConcentrationMode()Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getConcentrationMode()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, " Failed talking to ApplicationPolicy service "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getDPMService()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    return-object p0
.end method

.method public getDefaultApplication(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getDefaultApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultApplicationInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisabledPackages(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "ApplicationPolicy.getDisabledPackages"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHomeShortcuts(Ljava/lang/String;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getHomeShortcuts"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getHomeShortcuts(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getInstalledApplicationsIDList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getMostCpuUsageApps"

    const-string v2, "ApplicationPolicy.getMostCpuUsageApps"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNCPUUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getMostDataUsageApps"

    const-string v2, "ApplicationPolicy.getMostDataUsageApps"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNDataUsageApp(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getMostMemoryUsageApps"

    const-string v2, "ApplicationPolicy.getMostMemoryUsageApps"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNMemoryUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getMySinglePackageName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNewAdminActivationAppWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed getNewAdminActivationAppWhiteList"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromBlackList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBlackList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromClearCacheBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromClearCacheWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromClearCacheWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromClearDataBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromClearDataWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromDisableClipboardBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromDisableClipboardWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromDisableUpdateBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromDisableUpdateWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromFocusMonitoringList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromNotificationBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromNotificationWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromPreventStartBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackagesFromWhiteList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getPackagesFromWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with application policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public final getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object p0
.end method

.method public getRuntimePermissions(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "getRuntimePermissions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EdmConstants$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "getRuntimePermissions : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v1
.end method

.method public getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.getRuntimePermissionsEnforced"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object p0
.end method

.method public getUsbDevicesForDefaultAccess(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserService()Landroid/os/IUserManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mUm:Landroid/os/IUserManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mUm:Landroid/os/IUserManager;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mUm:Landroid/os/IUserManager;

    return-object p0
.end method

.method public installApplication(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ApplicationPolicy.installApplication(String)"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "ApplicationPolicy.installApplication(String, boolean)"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installOrUpdateApplicationInternal(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public installApplicationWithoutPermissions(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "ApplicationPolicy.installApplicationWithoutPermissions(String, boolean)"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public installApplicationWithoutPermissions(Ljava/lang/String;ZZ)Z
    .locals 1

    const-string v0, "ApplicationPolicy.installApplicationWithoutPermissions(String, boolean, boolean)"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installOrUpdateApplicationInternal(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final installOrUpdateApplicationInternal(Ljava/lang/String;ZZ)Z
    .locals 11

    const-string v0, "Failed to close file descriptor"

    const-string v1, "Failed to delete temporary file, SecurityException occurred"

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->checkPathAccessSecured(Ljava/lang/String;)V

    const-string v4, "/data"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    move v10, v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move v10, v2

    goto/16 :goto_4

    :cond_0
    move v10, v2

    :goto_0
    if-nez p1, :cond_1

    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "failed to copy apk from public dir"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :cond_1
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/high16 v5, 0x10000000

    :try_start_2
    invoke-static {v4, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v5, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    move-object v6, p1

    move v7, p2

    move-object v8, v3

    move v9, p3

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;Z)Z

    move-result p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    :try_start_4
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v10, :cond_3

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    :try_start_5
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    return p0

    :catchall_1
    move-exception p0

    move v2, v10

    goto :goto_6

    :catch_3
    move-exception p0

    goto :goto_4

    :catch_4
    :try_start_6
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "File path provided doesn\'t exist"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v10, :cond_4

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_3

    :catch_5
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    return v2

    :goto_4
    :try_start_8
    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p3, "Failed talking with application policy"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v3, :cond_5

    :try_start_9
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_5

    :catch_6
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    if-eqz v10, :cond_9

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    :try_start_a
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    :catch_7
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :goto_6
    if-eqz v3, :cond_6

    :try_start_b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_7

    :catch_8
    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_7

    :try_start_c
    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_8

    :catch_9
    move-exception p1

    sget-object p2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {p2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_8
    throw p0

    :cond_8
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Invalid parameter - apkFilePath is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return v2
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isApplicationInstalled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "isApplicationRunning"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationRunning(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationSetToDefault(Ljava/lang/String;I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isApplicationSetToDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNewAdminActivationEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed isNewAdminActivationEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isNewAdminInstallationEnabled(Z)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed isNewAdminInstallationEnabled"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageClipboardAllowed(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPackageInBlacklistInternal(III)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInBlacklistInternal(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed talking to application policy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageInWhitelistInternal(III)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed talking to application policy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isPackageUpdateAllowed(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling uid does not have permission to do this operation"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public logUsage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method public logUsage(Ljava/lang/String;Z)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public preventNewAdminActivation(Z)Z
    .locals 1

    const-string v0, "ApplicationPolicy.preventNewAdminActivation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed preventNewAdminActivation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public preventNewAdminInstallation(Z)Z
    .locals 1

    const-string v0, "ApplicationPolicy.preventNewAdminInstallation"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed preventNewAdminInstallation"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public reapplyRuntimePermissions(I)V
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.reapplyRuntimePermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->reapplyRuntimePermissions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppPackageNameFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppPermissionFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPermissionFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppSignatureFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppSignatureFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeApplicationFromCameraAllowList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 1

    const-string v0, "ApplicationPolicy.removeAppSignatureFromCameraAllowList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeApplicationFromCameraAllowList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public removeDefaultApplication(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removeDefaultApplication"

    const-string v2, "ApplicationPolicy.removeDefaultApplication"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromBatteryOptimizationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with ApplicationPolicy service"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public removePackageFromBlackList(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackageFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBlackList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed talking to application policy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public removePackageFromWhiteList(ILjava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackageFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    sget-object p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p1, "Failed talking to application policy"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public removePackagesFromClearCacheBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromClearCacheWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromClearDataBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromClearDataWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromDisableClipboardWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromDisableUpdateBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableUpdateBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromDisableUpdateWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableUpdateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromFocusMonitoringList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromNotificationBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromNotificationWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromPreventStartBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "removePackagesFromWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAfWProxy(ZLcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)I
    .locals 0

    const-string p1, "ApplicationPolicy.setAfWProxy"

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public setApplicationComponentState(Landroid/content/ComponentName;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationComponentState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setApplicationNotificationMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationNotificationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationNotificationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "ApplicationPolicy.setApplicationRestrictions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/knox/KnoxInternalFeature;->KNOX_CONFIG_MDM_VERSION:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mExternalDependencyInjector:Lcom/samsung/android/knox/ExternalDependencyInjector;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p0}, Lcom/samsung/android/knox/EdmUtils;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/ExternalDependencyInjector;->setApplicationRestrictionsMDM(Landroid/app/admin/IDevicePolicyManager;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to Device Policy Manager service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setApplicationState(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p3

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {p3, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    const-string v0, "ApplicationPolicy.setApplicationStateList"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationStateList(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationUninstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationUninstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationUninstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setApplicationUninstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/AccessController;->throwIfParentInstance(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAuthorizedScopes(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/AppIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setAuthorizedScopes"

    const-string v2, "ApplicationPolicy.setAuthorizedScopes"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAuthorizedScopes(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with enterprise policy service"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, -0x2

    return p0
.end method

.method public setConcentrationMode(Ljava/util/List;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setConcentrationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setConcentrationMode(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, " Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDefaultApplication(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "setDefaultApplication"

    const-string v2, "ApplicationPolicy.setDefaultApplication"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ApplicationPolicy.setDisableApplication"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "ApplicationPolicy.setEnableApplication"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setMySinglePackageName(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.startApp"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with Application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ApplicationPolicy.stopApp"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with Application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "uninstallApplication"

    const-string v2, "ApplicationPolicy.uninstallApplication"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with application policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "uninstallApplications"

    const-string v2, "ApplicationPolicy.uninstallApplications"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeManagedApplications(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "updateApplication"

    const-string v2, "ApplicationPolicy.updateApplication"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installOrUpdateApplicationInternal(Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public updateApplicationTable(III)Z
    .locals 1

    const-string v0, "ApplicationPolicy.updateApplicationTable"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->logUsage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateApplicationTable(III)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking to ApplicationPolicy service "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.verifyRuntimePermissionPackageSignature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo v1, "wipeApplicationData"

    const-string v2, "ApplicationPolicy.wipeApplicationData"

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy$$ExternalSyntheticOutline0;->m(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Lcom/samsung/android/knox/application/ApplicationPolicy;Ljava/lang/String;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->wipeApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with application policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
