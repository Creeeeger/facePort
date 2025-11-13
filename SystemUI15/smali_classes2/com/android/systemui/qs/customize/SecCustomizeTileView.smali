.class public final Lcom/android/systemui/qs/customize/SecCustomizeTileView;
.super Lcom/android/systemui/qs/tileimpl/SecQSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/customize/CustomActionView;


# instance fields
.field public final mCustomizeIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final mIds:Ljava/util/ArrayList;

.field public final mIsActive:Z

.field public mPointX:F

.field public mPointY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIds:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIsActive:Z

    iput-object p2, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    if-eqz p3, :cond_0

    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_ACTIVE_TO_AVAILABLE:Lcom/android/systemui/qs/customize/CustomActionId;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/systemui/qs/customize/CustomActionId;->MOVE_ITEM_FROM_AVAILABLE_TO_ACTIVE:Lcom/android/systemui/qs/customize/CustomActionId;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final getCircleColor(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIsActive:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p1, 0x7f0605b3

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final isLongClickable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mIsActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f0605b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mCustomizeIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mSecondLine:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/customize/SecCustomizeTileView;->mPointY:F

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateTouchTargetArea()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d9f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileView;->mLabelContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070d9d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070d9e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x51

    invoke-direct {v2, v0, v0, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
