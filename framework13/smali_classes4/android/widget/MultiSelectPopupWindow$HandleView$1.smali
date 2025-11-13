.class Landroid/widget/MultiSelectPopupWindow$HandleView$1;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/MultiSelectPopupWindow$HandleView;->magnifyHandleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/MultiSelectPopupWindow$HandleView;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/MultiSelectPopupWindow$HandleView;

    .line 1118
    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1122
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1123
    .local v0, "width":I
    const-string v1, "height"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1125
    .local v1, "height":I
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    iget-object v2, v2, Landroid/widget/MultiSelectPopupWindow$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v3, v0, v1}, Landroid/widget/MultiSelectPopupWindow$HandleView;->getDrawableBounds(II)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1126
    iget-object v2, p0, Landroid/widget/MultiSelectPopupWindow$HandleView$1;->this$1:Landroid/widget/MultiSelectPopupWindow$HandleView;

    invoke-virtual {v2}, Landroid/widget/MultiSelectPopupWindow$HandleView;->invalidate()V

    .line 1127
    return-void
.end method
