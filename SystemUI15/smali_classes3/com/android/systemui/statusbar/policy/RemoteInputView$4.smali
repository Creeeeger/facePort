.class public final Lcom/android/systemui/statusbar/policy/RemoteInputView$4;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$fadeOutView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputView;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;->val$fadeOutView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/core/animation/Animator;Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputView$4;->val$fadeOutView:Landroid/view/View;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
