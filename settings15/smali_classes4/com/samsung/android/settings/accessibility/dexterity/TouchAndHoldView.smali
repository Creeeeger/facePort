.class public Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final circleHeight:I

.field public final circleWidth:I

.field public final mCircleImageView:Landroid/widget/ImageView;

.field public final mHoldStandBy:Landroid/graphics/drawable/Drawable;

.field public final mTapConfirm:Landroid/graphics/drawable/Drawable;

.field public mXCoordinate:F

.field public mYCoordinate:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f071376

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->circleWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->circleHeight:I

    const v1, 0x7f080217

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mTapConfirm:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f080218

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mHoldStandBy:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    const v2, 0x7f08021a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1, p2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/16 v1, 0x11

    invoke-direct {p0, v0, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object p0
.end method

.method public final getCircleImageViewLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mCircleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mXCoordinate:F

    iget v2, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->circleWidth:I

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->mYCoordinate:F

    iget p0, p0, Lcom/samsung/android/settings/accessibility/dexterity/TouchAndHoldView;->circleHeight:I

    int-to-float v3, p0

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    return-object v0
.end method
