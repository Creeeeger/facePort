.class public final Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->action:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;->this$0:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->runnableWrapper:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$runnableWrapper$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->isDiscard:Z

    :cond_1
    return-void
.end method
