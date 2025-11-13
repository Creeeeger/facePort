.class public interface abstract Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static setAllButtonListenersAndColor(Landroid/view/ViewGroup;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p3}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public abstract getMenuAnimation()Ljava/lang/Runnable;
.end method

.method public abstract getVisibleButtonCount()I
.end method

.method public abstract setupButtons(Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;Z)V
.end method
