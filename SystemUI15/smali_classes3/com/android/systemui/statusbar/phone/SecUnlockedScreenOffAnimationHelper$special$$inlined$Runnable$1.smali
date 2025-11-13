.class public final Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardViewMediatorLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "updateSetLockScreenShownRunnable do not run after onStartedWakingUp"

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSetLockScreenShownRunnable called needUpdateSetLockScreenShown="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->logD(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper$special$$inlined$Runnable$1;->this$0:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->needUpdateSetLockScreenShown:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->updateSetLockScreenShown(Z)V

    :cond_1
    :goto_0
    return-void
.end method
