.class Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureFolderConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 554
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    .line 555
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockEventReceiver.onReceive() {action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " userId:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "}"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "KKG::SecureFolderConfirmLockHelper"

    .line 557
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "keyguard"

    .line 560
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 561
    iget-object p2, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)I

    move-result p2

    if-ne p2, v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmReturnCredentials(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mLockEventReceiver.onReceive() authenticationSucceededCallback"

    .line 562
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/SecureFolderConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->authenticationSucceededCallback()V

    :cond_0
    return-void
.end method
