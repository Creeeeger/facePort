.class public Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/animation/LaunchableView;


# instance fields
.field public mAccessibilityClass:Ljava/lang/String;

.field public final mBg:Landroid/widget/ImageView;

.field public mCircleColor:I

.field public final mCollapsedView:Z

.field public final mColorActive:I

.field public final mColorDisabled:I

.field public final mColorInactive:I

.field public final mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public final mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

.field public final mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public final mIconFrame:Landroid/widget/FrameLayout;

.field public mLastState:I

.field public mLastStateDescription:Ljava/lang/CharSequence;

.field public final mLocInScreen:[I

.field public mOrientation:I

.field public final mRipple:Landroid/graphics/drawable/RippleDrawable;

.field public mScreenLayout:I

.field public mSemDisplayDeviceType:I

.field public mStateDescriptionDeltas:Ljava/lang/CharSequence;

.field public final mStrokeWidthActive:F

.field public final mStrokeWidthInactive:F

.field public final mTileBackground:Landroid/graphics/drawable/Drawable;

.field public mTileSpec:Ljava/lang/String;

.field public mTileState:Z


# direct methods
.method public static synthetic $r8$lambda$8PEmPle3qwT-ZBfqDAlQpjAmlGM(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;ZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;-><init>(Landroid/content/Context;ZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/qs/tileimpl/QSIconViewImpl;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    new-instance v1, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050106

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050107

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    iget-object v3, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTouchIconSize(Landroid/content/Context;)I

    move-result v4

    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->getTileIconSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    invoke-direct {v5, v1, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    if-nez p3, :cond_2

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {p3, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    :cond_2
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v2, p3, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of p3, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p3, :cond_3

    move-object p3, p1

    check-cast p3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f060692

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f0605dd

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f0605dc

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    iget-object p1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const p3, 0x7f0605db

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    invoke-virtual {p0, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    iput-boolean p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCollapsedView:Z

    return-void
.end method


# virtual methods
.method public getCircleColor(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p0, "Invalid state "

    const-string v0, "QSTileBaseView"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorActive:I

    return p0

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorDisabled:I

    return p0

    :cond_2
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mColorInactive:I

    return p0
.end method

.method public getDetailY()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p0, v0

    return p0
.end method

.method public final getIcon()Lcom/android/systemui/plugins/qs/QSIconView;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ShapeDrawable;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v4, 0x0

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthActive:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStrokeWidthInactive:F

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_3
    :goto_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->getCircleColor(I)I

    move-result v0

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mBg:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mCircleColor:I

    :cond_4
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileSpec:Ljava/lang/String;

    const v4, 0x7f13132a

    if-eqz v3, :cond_8

    const-string v5, "SoundMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eq v3, v2, :cond_7

    if-eq v3, v1, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v2, 0x7f131329    # 1.95496E38f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v2, v1, :cond_9

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_8
    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastState:I

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLastStateDescription:Ljava/lang/CharSequence;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_4

    :cond_a
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_4
    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    instance-of v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    if-eq v0, p1, :cond_b

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    :cond_b
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable$Companion$fromView$1;I)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable$Companion$fromView$1;I)V

    new-instance v3, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;

    invoke-direct {v3, p1, v0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable$Companion$fromView$1;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;)V

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileSpec:Ljava/lang/String;

    return-void
.end method

.method public init(Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda1;Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$$ExternalSyntheticLambda3;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIconFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    const v0, 0x101045c

    filled-new-array {v0}, [I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mScreenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mSemDisplayDeviceType:I

    iget v2, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-eq v0, v2, :cond_1

    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mScreenLayout:I

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mSemDisplayDeviceType:I

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mStateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_0

    const v1, 0x7f13132a

    goto :goto_0

    :cond_0
    const v1, 0x7f131329    # 1.95496E38f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f1300bc

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->updateRippleSize()V

    :cond_0
    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mHandler:Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "locInScreen=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mLocInScreen:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", iconView="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", tileState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mTileState:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method public final updateRippleSize()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mIcon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3edc28f6    # 0.43f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/SecQSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int/2addr v0, v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v3, v4, v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    return-void
.end method
