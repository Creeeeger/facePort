.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;
.super Lcom/android/keyguard/SecCountDownTimer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJLandroid/content/Context;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

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
    .locals 3

    const-string v0, "KeyguardSecIndicationController"

    const-string v1, "CountdownTimer - onFinish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/SecCountDownTimer;->onTick(J)V

    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "CountdownTimer - "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "KeyguardSecIndicationController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$7;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
