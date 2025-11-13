.class public Lcom/samsung/android/knox/accounts/EmailPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ACTION_INTERNAL_MDM_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

.field public static final ACTION_INTERNAL_MDM_ACCOUNT_SETUP_RESULT:Ljava/lang/String; = "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

.field public static final ACTION_MDM_ACCOUNT_DELETE_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

.field public static final ACTION_MDM_ACCOUNT_SETUP_RESULT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

.field public static final ACTION_UNLOCK_CREDENTIAL_INTERNAL:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field public static final EMAIL_FAIL_BIND_PASSWORD:I = 0x3e9

.field public static TAG:Ljava/lang/String; = "EmailPolicy"


# instance fields
.field public final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public allowAccountAddition(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.allowAccountAddition"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowAccountAddition(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with email account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowEmailSettingsChange(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.allowEmailSettingsChange"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowEmailSettingsChange(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public allowPopImapEmail(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.allowPopImapEmail"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->allowPopImapEmail(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with email account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAllowEmailForwarding(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with email policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getAllowHtmlEmail(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->getAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with email policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    if-nez v0, :cond_0

    const-string v0, "email_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    return-object p0
.end method

.method public isAccountAdditionAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isAccountAdditionAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEmailNotificationsEnabled(J)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isEmailNotificationsEnabled(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isEmailSettingsChangeAllowed(J)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isEmailSettingsChangeAllowed(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPopImapEmailAllowed()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->isPopImapEmailAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAllowEmailForwarding(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.setAllowEmailForwarding"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setAllowEmailForwarding(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAllowHtmlEmail(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.setAllowHTMLEmail"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setAllowHTMLEmail(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setEmailNotificationsState(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailPolicy.setEmailNotificationsState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailPolicy;->setEmailNotificationsState(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
