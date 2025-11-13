.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lio/reactivex/functions/Action;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v2, 0x7f1308ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintLeave()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->BIOMETRICS_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mErrorColor:Landroid/content/res/ColorStateList;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndicationTimeout(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->TRUST_AGENT_HELP:Lcom/android/systemui/statusbar/IndicationEventType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->hasTrust()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->UNLOCK_GUIDE:Lcom/android/systemui/statusbar/IndicationEventType;

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->getUnlockGuideText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$SecKeyguardCallback;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->-$$Nest$mupdateDefaultIndications(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
