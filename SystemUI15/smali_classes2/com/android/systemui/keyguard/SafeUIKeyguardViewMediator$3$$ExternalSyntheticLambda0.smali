.class public final synthetic Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$7;->mOccludeByDreamAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;

    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$3;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
