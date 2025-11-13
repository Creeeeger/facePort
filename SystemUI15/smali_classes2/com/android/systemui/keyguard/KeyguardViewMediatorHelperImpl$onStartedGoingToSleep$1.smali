.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$onStartedGoingToSleep$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->unlockedScreenOffAnimationHelper:Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->statusBarStateControllerImpl:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->keyguardVisibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->panelState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecUnlockedScreenOffAnimationHelper;->isPanelOpenedOnGoingToSleep:Z

    return-void
.end method
