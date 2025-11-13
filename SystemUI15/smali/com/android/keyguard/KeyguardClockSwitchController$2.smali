.class public final Lcom/android/keyguard/KeyguardClockSwitchController$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardClockSwitchController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitchController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$2;->this$0:Lcom/android/keyguard/KeyguardClockSwitchController;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
