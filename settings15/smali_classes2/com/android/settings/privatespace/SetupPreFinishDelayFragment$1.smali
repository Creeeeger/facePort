.class public final Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;->this$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Received broadcast: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SetupPreFinishDelayFrag"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;->this$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    iput-boolean v0, p1, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mActionProfileUnavailable:Z

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.PROFILE_INACCESSIBLE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;->this$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    iput-boolean v0, p1, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mActionProfileInaccessible:Z

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$1;->this$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    iget-boolean p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mActionProfileUnavailable:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mActionProfileInaccessible:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->sHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const p1, 0x7f0a0090

    invoke-virtual {p0, p1}, Landroidx/navigation/NavController;->navigate(I)V

    :cond_3
    return-void
.end method
