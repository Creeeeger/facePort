.class public Lcom/android/systemui/wallet/ui/WalletView;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mActionButton:Landroid/widget/Button;

.field public final mAnimationTranslationX:F

.field public final mAppButton:Landroid/widget/Button;

.field public final mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

.field public final mCardCarouselContainer:Landroid/view/ViewGroup;

.field public final mCardLabel:Landroid/widget/TextView;

.field public mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

.field public final mEmptyStateView:Landroid/view/ViewGroup;

.field public final mErrorView:Landroid/widget/TextView;

.field public mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mIcon:Landroid/widget/ImageView;

.field public mIsDeviceLocked:Z

.field public mIsUdfpsEnabled:Z

.field public final mOutInterpolator:Landroid/view/animation/Interpolator;

.field public mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

.field public final mToolbarAppButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallet/ui/WalletView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    iput-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    const p2, 0x7f0d0570

    invoke-static {p1, p2, p0}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p2, 0x7f0a0251

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0a0250

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iput-object p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iput-object p0, p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    const v0, 0x7f0a0505

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a05df

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    const v0, 0x7f0a0e9f

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    const v0, 0x7f0a0ea2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    const v0, 0x7f0a0e9e

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    const v0, 0x7f0a0426

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    const v0, 0x7f0a0ea0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    const v0, 0x10c0002

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mOutInterpolator:Landroid/view/animation/Interpolator;

    iget p1, p2, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    int-to-float p1, p1

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAnimationTranslationX:F

    return-void
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/systemui/classifier/FalsingCollector;->onTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onMotionEventComplete()V

    :cond_1
    return p1
.end method

.method public getAppButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    return-object p0
.end method

.method public getCardCarouselContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getCardLabel()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    return-object p0
.end method

.method public getEmptyStateView()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getErrorView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    return-object p0
.end method

.method public getIcon()Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method public final onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    aget-object v1, v1, v5

    goto :goto_1

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v1}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_0
    move-object v1, v2

    :goto_1
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    const v3, 0x1120026

    invoke-static {v2, v3, v5}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    iget-boolean v3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/systemui/wallet/ui/WalletView;->renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    check-cast p1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object p1, p1, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p1}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object p2, p2, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {p2}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setAlpha(F)V

    :goto_3
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    iget p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    iput p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mExpectedViewWidth:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p4, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    const p4, 0x3f30a3d7    # 0.69f

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    int-to-float p3, p3

    const p4, 0x3fcba2e9

    div-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardHeightPx:I

    iget p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    int-to-float p3, p3

    const p4, 0x3d124925

    mul-float/2addr p4, p3

    iput p4, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCornerRadiusPx:F

    const p4, -0x430a3d71    # -0.03f

    mul-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardMarginPx:I

    iget p3, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardWidthPx:I

    const p4, 0x7f0701ad

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p3

    iput p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mTotalCardWidth:I

    int-to-float p2, p2

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    iput p2, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardEdgeToCenterDistance:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->updatePadding(I)V

    iget-object p0, p1, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mSelectionListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnSelectionListener;

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/systemui/wallet/ui/WalletScreenController;

    invoke-virtual {p0}, Lcom/android/systemui/wallet/ui/WalletScreenController;->queryWalletCards()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v0}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p3, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mDeviceLockedActionOnClickListener:Landroid/view/View$OnClickListener;

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/android/systemui/wallet/ui/WalletView$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallet/ui/WalletView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;)V

    :goto_1
    invoke-virtual {p3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public final showCardCarousel(Ljava/util/List;IZZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget-boolean v1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    iget-object v5, v4, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    iput-object p1, v4, Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;->mData:Ljava/util/List;

    if-nez v1, :cond_5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-eq v1, v6, :cond_1

    goto :goto_3

    :cond_1
    move v1, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    check-cast v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v6, v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v6}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v6

    check-cast v7, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v7, v7, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v7}, Landroid/service/quickaccesswallet/WalletCard;->getCardId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_2
    if-nez v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :goto_3
    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    move v1, v2

    :goto_4
    invoke-virtual {v0, p2}, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->scrollToPosition(I)V

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-object v0, v0, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mCardScrollListener:Lcom/android/systemui/wallet/ui/WalletCardCarousel$OnCardScrollListener;

    check-cast v0, Lcom/android/systemui/wallet/ui/WalletView;

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v4, v5}, Lcom/android/systemui/wallet/ui/WalletView;->onCardScroll(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;Lcom/android/systemui/wallet/ui/WalletCardViewInfo;F)V

    iput-boolean p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsDeviceLocked:Z

    iput-boolean p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {p4, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    invoke-virtual {p4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    check-cast v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v6, v6, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_6

    const v7, 0x1120026

    invoke-static {v4, v7, v3}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v4

    invoke-virtual {v6, v4}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_6
    invoke-virtual {p4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    check-cast v4, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;

    iget-object v6, v4, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v6}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_7

    move-object v6, v7

    :cond_7
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\\n"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    aget-object v4, v6, v3

    goto :goto_6

    :cond_8
    iget-object v4, v4, Lcom/android/systemui/wallet/ui/WalletScreenController$QAWalletCardViewInfo;->mWalletCard:Landroid/service/quickaccesswallet/WalletCard;

    invoke-virtual {v4}, Landroid/service/quickaccesswallet/WalletCard;->getCardLabel()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    move-object v7, v4

    :goto_5
    move-object v4, v7

    :goto_6
    invoke-virtual {p4, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p4

    iget p4, p4, Landroid/content/res/Configuration;->orientation:I

    const v4, 0x7f0a03de

    if-ne p4, v2, :cond_a

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    invoke-virtual {p4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    :cond_a
    if-ne p4, v9, :cond_b

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    invoke-virtual {p4, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mToolbarAppButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mShowWalletAppOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    :goto_7
    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    iget-object v0, p4, Lcom/android/systemui/wallet/ui/WalletCardCarousel;->mWalletCardCarouselAdapter:Lcom/android/systemui/wallet/ui/WalletCardCarousel$WalletCardCarouselAdapter;

    invoke-virtual {p4, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p4, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarouselContainer:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_c

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f071848

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_c
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallet/ui/WalletCardViewInfo;

    iget-boolean p2, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIsUdfpsEnabled:Z

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/systemui/wallet/ui/WalletView;->renderActionButton(Lcom/android/systemui/wallet/ui/WalletCardViewInfo;ZZ)V

    if-eqz v1, :cond_e

    const/4 p1, 0x3

    new-array p2, p1, [Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    aput-object p3, p2, v3

    iget-object p3, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    aput-object p3, p2, v2

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mActionButton:Landroid/widget/Button;

    aput-object p0, p2, v9

    :goto_8
    if-ge v3, p1, :cond_e

    aget-object p0, p2, v3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p3

    if-nez p3, :cond_d

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p0, p3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p3, 0x64

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method public final showEmptyStateView(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/systemui/wallet/ui/WalletScreenController$$ExternalSyntheticLambda4;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mErrorView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardCarousel:Lcom/android/systemui/wallet/ui/WalletCardCarousel;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mCardLabel:Landroid/widget/TextView;

    const p2, 0x7f13148c

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    const p2, 0x7f0a0405

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const v0, 0x7f080aa5

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    const p2, 0x7f0a0406

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/wallet/ui/WalletView;->mEmptyStateView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/wallet/ui/WalletView;->mAppButton:Landroid/widget/Button;

    invoke-virtual {p0, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
