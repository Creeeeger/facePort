.class public final Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleShrinkAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mFling:Z

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    iget-object p1, p1, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mRectangleIconBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$5;->this$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->resetBlurRectangleView()V

    return-void
.end method
