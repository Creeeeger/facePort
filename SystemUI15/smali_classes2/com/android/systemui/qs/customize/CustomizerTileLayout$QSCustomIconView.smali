.class public final Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIconRemove:Landroid/view/View;

.field public final mIconStroke:Landroid/graphics/drawable/GradientDrawable;

.field public final mIsActive:Z

.field public final mIsTopEdit:Z

.field public final mRemoveButtonSizePx:I

.field public final mRemoveIconSizePx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-boolean p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsTopEdit:Z

    iget-object p1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070d9e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    if-eqz p3, :cond_0

    const p1, 0x7f070da1

    goto :goto_0

    :cond_0
    const p1, 0x7f070d75

    :goto_0
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveButtonSizePx:I

    iput p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveIconSizePx:I

    iput-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public final addRemoveButton(Lcom/android/systemui/qs/customize/SecCustomizeTileView;Landroid/view/View$OnClickListener;Ljava/lang/CharSequence;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    const v1, 0x7f080e4c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/android/systemui/util/ShadowDelegateUtil;->INSTANCE:Lcom/android/systemui/util/ShadowDelegateUtil;

    iget-object v4, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d86

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    iget v6, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveIconSizePx:I

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/android/systemui/util/ShadowDelegateUtil;->createShadowDrawable(Landroid/graphics/drawable/Drawable;FFI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    sget v0, Lcom/android/systemui/qs/customize/SecQSSettingEditResources;->REMOVE_ICON_ID:I

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setId(I)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130e4d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f13005f

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    iget p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveIconSizePx:I

    div-int/lit8 p3, p3, 0x3

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p4, p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p5, p3

    invoke-virtual {p2, p1, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p1, p2}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget p2, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIconSizePx:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveButtonSizePx:I

    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mRemoveIconSizePx:I

    iget-boolean v2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsTopEdit:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    div-int v2, v1, v2

    div-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {v3, p2, p2}, Landroid/view/View;->measure(II)V

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, v2, p1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconRemove:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_1
    return-void
.end method

.method public final setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 1

    iget-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_0

    :cond_0
    iget-object p3, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    instance-of v0, p3, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p3, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    if-eqz p3, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result p2

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0605b1

    invoke-virtual {p2, p3}, Landroid/content/Context;->getColor(I)I

    move-result p2

    :goto_2
    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p3}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-boolean p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIsActive:Z

    if-nez p2, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileLayout$QSCustomIconView;->mIconStroke:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method
