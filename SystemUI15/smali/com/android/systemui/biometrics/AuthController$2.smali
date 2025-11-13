.class public final Lcom/android/systemui/biometrics/AuthController$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/biometrics/AuthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$2;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "unknown"

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$2;->this$0:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Close BP, reason :"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "AuthController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    check-cast p1, Lcom/android/systemui/biometrics/AuthContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onBiometricPromptDismissed()V

    goto :goto_1

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-interface {v0, v1, p1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogDismissed(I[B)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController;->mReceiver:Landroid/hardware/biometrics/IBiometricSysuiReceiver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Remote exception"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return-void
.end method
