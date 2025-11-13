.class public final Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;
.super Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final captionHandle:Landroid/widget/ImageButton;

.field public final captionView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0353

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;->captionView:Landroid/view/View;

    const v1, 0x7f0a024b

    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;->captionHandle:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;->captionHandle:Landroid/widget/ImageButton;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->luminance()F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result p1

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    const p1, 0x7f06011f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    const p1, 0x7f06011e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_1
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final onHandleMenuClosed()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;->captionHandle:Landroid/widget/ImageButton;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onHandleMenuOpened()V
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/viewholder/AppHandleViewHolder;->captionHandle:Landroid/widget/ImageButton;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
