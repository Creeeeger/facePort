.class public final Landroidx/transition/ChangeBounds$ClipListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/transition/Transition$TransitionListener;


# instance fields
.field public final mEndBottom:I

.field public final mEndClip:Landroid/graphics/Rect;

.field public final mEndClipIsNull:Z

.field public final mEndLeft:I

.field public final mEndRight:I

.field public final mEndTop:I

.field public mIsCanceled:Z

.field public final mStartBottom:I

.field public final mStartClip:Landroid/graphics/Rect;

.field public final mStartClipIsNull:Z

.field public final mStartLeft:I

.field public final mStartRight:I

.field public final mStartTop:I

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/graphics/Rect;ZLandroid/graphics/Rect;ZIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    iput-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    iput-boolean p3, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClipIsNull:Z

    iput-object p4, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    iput-boolean p5, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    iput p6, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    iput p7, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    iput p8, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    iput p9, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    iput p10, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    iput p11, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    iput p12, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    iput p13, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$ClipListener;->onAnimationEnd(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-boolean p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mIsCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClipIsNull:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    :goto_0
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_4

    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    iget p0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    invoke-static {p1, p2, v0, v1, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    iget p2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    iget p0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    invoke-static {p1, p2, v0, v1, p0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    :goto_1
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/transition/ChangeBounds$ClipListener;->onAnimationStart(Landroid/animation/Animator;Z)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 4

    iget p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartRight:I

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    sub-int/2addr p1, v0

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndRight:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartBottom:I

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndBottom:I

    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p2, :cond_0

    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndLeft:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartLeft:I

    :goto_0
    if-eqz p2, :cond_1

    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndTop:I

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartTop:I

    :goto_1
    iget-object v3, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    add-int/2addr p1, v1

    add-int/2addr v0, v2

    invoke-static {v3, v1, v2, p1, v0}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    if-eqz p2, :cond_2

    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    goto :goto_2

    :cond_2
    iget-object p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mStartClip:Landroid/graphics/Rect;

    :goto_2
    iget-object p0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTransitionCancel(Landroidx/transition/Transition;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mIsCanceled:Z

    return-void
.end method

.method public final onTransitionEnd(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public final onTransitionPause()V
    .locals 3

    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    const v2, 0x7f0a0d7f

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-boolean v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClipIsNull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mEndClip:Landroid/graphics/Rect;

    :goto_0
    iget-object p0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTransitionResume()V
    .locals 4

    iget-object v0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    const v1, 0x7f0a0d7f

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/transition/ChangeBounds$ClipListener;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onTransitionStart(Landroidx/transition/Transition;)V
    .locals 0

    return-void
.end method
