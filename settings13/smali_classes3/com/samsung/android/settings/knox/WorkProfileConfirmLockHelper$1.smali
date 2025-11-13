.class Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkProfileConfirmLockHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)V
    .locals 0

    .line 829
    iput-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 832
    iget-object v0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {v2}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmReturnCredentials(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/knox/KnoxUtils;->needUCMLockSetWithoutWC(Landroid/content/Context;IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 835
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    .line 836
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockEventReceiver.onReceive() {action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
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

    const-string v1, "KKG::WorkProfileConfirmLockHelper"

    .line 838
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "keyguard"

    .line 841
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    .line 842
    iget-object p2, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p2}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmUserId(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)I

    move-result p2

    if-ne p2, v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p1}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmReturnCredentials(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mLockEventReceiver.onReceive() authenticationSucceededCallback"

    .line 843
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    iget-object p0, p0, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper$1;->this$0:Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;

    invoke-static {p0}, Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;->-$$Nest$fgetmCallback(Lcom/samsung/android/settings/knox/WorkProfileConfirmLockHelper;)Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/settings/knox/KnoxConfirmDeviceCredentialBaseFragmentHelper$Callback;->authenticationSucceededCallback()V

    :cond_1
    return-void
.end method
