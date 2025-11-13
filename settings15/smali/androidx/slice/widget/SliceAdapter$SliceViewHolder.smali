.class public final Landroidx/slice/widget/SliceAdapter$SliceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mSliceChildView:Landroidx/slice/widget/SliceChildView;

.field public final synthetic this$0:Landroidx/slice/widget/SliceAdapter;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/SliceAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    instance-of p1, p2, Landroidx/slice/widget/SliceChildView;

    if-eqz p1, :cond_0

    check-cast p2, Landroidx/slice/widget/SliceChildView;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->mSliceChildView:Landroidx/slice/widget/SliceChildView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object v0, v0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, v0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mParent:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    :cond_0
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter$SliceViewHolder;->this$0:Landroidx/slice/widget/SliceAdapter;

    iget-object p0, p0, Landroidx/slice/widget/SliceAdapter;->mTemplateView:Landroidx/slice/widget/TemplateView;

    const/4 p1, 0x0

    if-eqz p0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mParent:Landroidx/slice/widget/SliceView;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    aget v1, v1, p1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mLoc:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    if-eq p2, v3, :cond_3

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    :cond_3
    iget-object p0, p0, Landroidx/slice/widget/TemplateView;->mForeground:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    :goto_1
    return p1
.end method
