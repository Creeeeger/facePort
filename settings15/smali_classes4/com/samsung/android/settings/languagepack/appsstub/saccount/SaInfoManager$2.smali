.class public final Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string/jumbo p1, "onServiceConnected : rc = "

    const-string/jumbo v0, "onServiceConnected : ai = "

    const-string/jumbo v1, "onServiceConnected : pn = "

    const-string v2, "SaInfoManager"

    const-string/jumbo v3, "onServiceConnected : start"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mRegistrationCode:Ljava/lang/String;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mBound:Z

    sget v5, Lcom/msc/sa/aidl/ISAService$Stub;->$r8$clinit:I

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, "com.msc.sa.aidl.ISAService"

    invoke-interface {p2, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/msc/sa/aidl/ISAService;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/msc/sa/aidl/ISAService;

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object p2, v4, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    iput-object v4, v3, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object p2, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object v1, v1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object v0, v0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSAClientId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object v0, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v1, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSAClientId:Ljava/lang/String;

    iget-object v3, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSAKey:Ljava/lang/String;

    iget-object v4, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mPackageName:Ljava/lang/String;

    iget-object v5, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mSaCallback:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$1;

    check-cast v0, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/msc/sa/aidl/ISAService$Stub$Proxy;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mRegistrationCode:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object p2, p2, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mRegistrationCode:Ljava/lang/String;

    if-nez p2, :cond_2

    const-string/jumbo p1, "onServiceConnected : mRegistrationCode is null"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const-string p1, "mRegistrationCode is null"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mRegistrationCode:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    iget-object p1, p1, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p1

    if-nez p1, :cond_3

    const-string p1, "isSamsungAccountSigned : accountManager is null"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p2, "com.osp.app.signin"

    invoke-virtual {p1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mAlreadyExpiredToken:Z

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->requestForUserToken(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :goto_1
    const-string/jumbo p1, "onServiceConnected : samsung account is not signed in!"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const-string/jumbo p1, "samsung account is not signed in!"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string/jumbo p1, "onServiceConnected : mISaService is null"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/languagepack/logger/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const-string p1, "mISaService is null"

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->handleFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "SaInfoManager"

    const-string/jumbo v0, "onServiceDisconnected : start"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/languagepack/logger/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager$2;->this$0:Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mBound:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/languagepack/appsstub/saccount/SaInfoManager;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-void
.end method
