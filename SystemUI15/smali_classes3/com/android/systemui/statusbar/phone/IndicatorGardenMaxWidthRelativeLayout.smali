.class public final Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/IndicatorGardenContainer;


# instance fields
.field public gardenMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    return-void
.end method


# virtual methods
.method public final getGardenWidth()I
    .locals 2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingEnd()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p0

    if-ge v0, p0, :cond_0

    move v0, p0

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isGardenVisible()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    const/4 v2, 0x1

    if-gt v2, v1, :cond_0

    if-ge v1, v0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public final setGardenMaxWidth(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenMaxWidthRelativeLayout;->gardenMaxWidth:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method
