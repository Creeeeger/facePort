.class public Lcom/samsung/android/knox/accounts/EmailAccountPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final ACCOUNT_TYPE_IMAP:Ljava/lang/String; = "imap"

.field public static final ACCOUNT_TYPE_POP3:Ljava/lang/String; = "pop3"

.field public static final ACTION_EMAIL_ACCOUNT_ADD_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

.field public static final ACTION_EMAIL_ACCOUNT_DELETE_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

.field public static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

.field public static final EXTRA_EMAIL_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

.field public static final EXTRA_INCOMING_PROTOCOL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

.field public static final EXTRA_INCOMING_SERVER_ADDRESS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

.field public static final EXTRA_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.RESULT"

.field public static TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iput-object p1, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method


# virtual methods
.method public addNewAccount(Lcom/samsung/android/knox/accounts/EmailAccount;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.addNewAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->addNewAccount_new(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/accounts/EmailAccount;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed talking with email account policy"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public deleteAccount(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.deleteAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->deleteAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAccountDetails(J)Lcom/samsung/android/knox/accounts/Account;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountDetails(Lcom/samsung/android/knox/ContextInfo;J)Lcom/samsung/android/knox/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAccountId(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getAllEmailAccounts()[Lcom/samsung/android/knox/accounts/Account;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getAllEmailAccounts(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/accounts/Account;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecurityInComingServerPassword(J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getSecurityInComingServerPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecurityOutGoingServerPassword(J)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.getSecurityOutGoingServerPassword"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->getSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;J)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    if-nez v0, :cond_0

    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    return-object p0
.end method

.method public removePendingAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.removePendingAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->removePendingAccount(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.sendAccountsChangedBroadcast"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->sendAccountsChangedBroadcast(Lcom/samsung/android/knox/ContextInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v1, "Failed talking with email account policy"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAccountName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAccountName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAlwaysVibrateOnEmailNotification"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setAsDefaultAccount"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setAsDefaultAccount(Lcom/samsung/android/knox/ContextInfo;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingProtocol"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingProtocol(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerAcceptAllCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerPort"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setInComingServerSSL"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setInComingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerAcceptAllCertificates"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerAddress"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerAddress(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerPort"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerPort(Lcom/samsung/android/knox/ContextInfo;IJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setOutGoingServerSSL"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setOutGoingServerSSL(Lcom/samsung/android/knox/ContextInfo;ZJ)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSecurityInComingServerPassword(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSecurityInComingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityInComingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setAccountCertificatePassword "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setSecurityOutGoingServerPassword(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSecurityOutGoingServerPassword"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSecurityOutGoingServerPassword(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string v0, "Failed setSecurityOutGoingServerPassword "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSenderName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSenderName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "EmailAccountPolicy.setSignature"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->getService()Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mService:Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/samsung/android/knox/accounts/IEmailAccountPolicy;->setSignature(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;J)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/knox/accounts/EmailAccountPolicy;->TAG:Ljava/lang/String;

    const-string p2, "Failed talking with email account policy"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
