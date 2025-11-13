.class public final synthetic Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/animation/Animator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

.field public final synthetic f$1:Landroidx/core/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroidx/core/animation/ValueAnimator;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->f$1:Landroidx/core/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroidx/core/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->f$1:Landroidx/core/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/policy/RemoteInputView;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setFocusAnimationScaleY(F)V

    return-void

    :pswitch_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/core/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setFocusAnimationScaleY(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
