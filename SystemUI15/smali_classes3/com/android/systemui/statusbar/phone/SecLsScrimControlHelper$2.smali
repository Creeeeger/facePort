.class public final Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrimaryBouncerShowingChanged()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper$2;->this$0:Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mPrimaryBouncerShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mScrimInFront:Lcom/android/systemui/scrim/ScrimView;

    iget v1, v0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/scrim/ScrimView;->setViewAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlHelper;->mProvider:Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
