.class public final Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$animationSet:Landroid/animation/AnimatorSet;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;->val$animationSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;->val$view:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;->val$animationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method
