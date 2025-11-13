.class public final Lcom/android/keyguard/KeyguardSecPatternViewController$2;
.super Lcom/android/keyguard/SecCountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecPatternViewController;JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    move-wide v1, p2

    move-wide v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/keyguard/SecCountDownTimer;-><init>(JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 4

    const-string v0, "KeyguardSecPatternViewController"

    const-string v1, "handleAttemptLockout onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecPatternViewController;->isHintText$1()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHintText:Lcom/android/keyguard/KeyguardHintTextArea;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardHintTextArea;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {v2, v1, v1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->scrollTo(II)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearBiometricAttemptDeadline(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->displayDefaultSecurityMessage()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->resetFor2StepVerification$1()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecPatternViewController;->mUpdateLayoutRunnable:Lcom/android/keyguard/KeyguardSecPatternViewController$$ExternalSyntheticLambda1;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->updateForgotPasswordTextVisibility()V

    return-void
.end method

.method public final onTick(J)V
    .locals 4

    long-to-double v0, p1

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardPatternViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iput v0, v1, Lcom/android/keyguard/KeyguardSecPatternViewController;->mSecondsRemaining:I

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/SecCountDownTimer;->onTick(J)V

    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    iget-object p2, p2, Lcom/android/keyguard/KeyguardInputViewController;->mMessageAreaController:Lcom/android/keyguard/KeyguardSecMessageAreaController;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardSecMessageAreaController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPatternViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecPatternViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecPatternViewController;->updateLayoutForAttemptRemainingBeforeWipe$1()V

    return-void
.end method
