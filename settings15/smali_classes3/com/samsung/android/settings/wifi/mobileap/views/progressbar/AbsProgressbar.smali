.class public abstract Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBarBgPaint:Landroid/graphics/Paint;

.field public mBarPaint:Landroid/graphics/Paint;

.field public mGraphHeight:F

.field public mGraphOutlinePath:Landroid/graphics/Path;

.field public mGraphOutlineStrokePaint:Landroid/graphics/Paint;

.field public mGraphRadius:F

.field public mMaxGraphWidth:F

.field public mProgress:F

.field public mProgressAnimator:Landroid/animation/ValueAnimator;


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    move-object p1, p0

    check-cast p1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/StackProgressbar;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget p1, p1, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mProgress:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/progressbar/AbsProgressbar;->mMaxGraphWidth:F

    return-void
.end method
