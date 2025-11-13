.class public final Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object v1, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    iget-boolean v0, v0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->needUCMLockSetWithoutWC(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mLockEventReceiver.onReceive() {action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " userId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "}"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "KKG::WorkProfileConfirmLockHelper"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget p2, p2, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mUserId:I

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-boolean p1, p1, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mReturnCredentials:Z

    if-nez p1, :cond_1

    const-string p1, "mLockEventReceiver.onReceive() authenticationSucceededCallback"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->mCallback:Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    check-cast p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    :cond_1
    return-void
.end method
