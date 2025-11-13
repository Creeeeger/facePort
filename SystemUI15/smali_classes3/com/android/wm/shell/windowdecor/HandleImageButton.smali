.class public final Lcom/android/wm/shell/windowdecor/HandleImageButton;
.super Landroid/widget/ImageButton;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final handleAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/windowdecor/HandleImageButton$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/windowdecor/HandleImageButton$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final animateHandle(FJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getScaleX()F

    move-result p3

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p1, v0, p3

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/wm/shell/windowdecor/HandleImageButton$animateHandle$1;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/windowdecor/HandleImageButton$animateHandle$1;-><init>(Lcom/android/wm/shell/windowdecor/HandleImageButton;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/HandleImageButton;->handleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final onHoverChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onHoverChanged(Z)V

    const-wide/16 v0, 0x12c

    if-eqz p1, :cond_0

    const p1, 0x3f99999a    # 1.2f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleImageButton;->animateHandle(FJ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result p1

    if-nez p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleImageButton;->animateHandle(FJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPressed(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setPressed(Z)V

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_0

    const p1, 0x3f59999a    # 0.85f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleImageButton;->animateHandle(FJ)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/wm/shell/windowdecor/HandleImageButton;->animateHandle(FJ)V

    :cond_1
    :goto_0
    return-void
.end method
