.class public final synthetic Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;

    sget-object v0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->sHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/privatespace/SetupPreFinishDelayFragment;->mRunnable:Lcom/android/settings/privatespace/SetupPreFinishDelayFragment$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {p0}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    const v0, 0x7f0a0090

    invoke-virtual {p0, v0}, Landroidx/navigation/NavController;->navigate(I)V

    return-void
.end method
