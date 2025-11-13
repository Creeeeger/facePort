.class public Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;
.super Lcom/android/systemui/plugins/qs/QSTileView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tileimpl/HeightOverrideable;
.implements Lcom/android/systemui/animation/LaunchableView;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public accessibilityClass:Ljava/lang/String;

.field public backgroundBaseDrawable:Landroid/graphics/drawable/Drawable;

.field public backgroundColor:I

.field public backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

.field public backgroundOverlayColor:I

.field public backgroundOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field public final chevronView:Landroid/widget/ImageView;

.field public final colorActive:I

.field public final colorEvaluator:Landroid/animation/ArgbEvaluator;

.field public final colorInactive:I

.field public final colorLabelActive:I

.field public final colorLabelInactive:I

.field public final colorLabelUnavailable:I

.field public final colorSecondaryLabelActive:I

.field public final colorSecondaryLabelInactive:I

.field public final colorSecondaryLabelUnavailable:I

.field public final colorUnavailable:I

.field public final customDrawableView:Landroid/widget/ImageView;

.field public finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

.field public haveLongPressPropertiesBeenReset:Z

.field public final heightOverride:I

.field public final icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

.field public initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

.field public final label:Landroid/widget/TextView;

.field public final labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

.field public lastDisabledByPolicy:Z

.field public lastIconTint:I

.field public lastState:I

.field public lastStateDescription:Ljava/lang/CharSequence;

.field public final launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

.field public final locInScreen:[I

.field public final longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

.field public longPressEffectAnimator:Landroid/animation/ValueAnimator;

.field public final overlayColorActive:I

.field public final overlayColorInactive:I

.field public final paddingForLaunch:Landroid/graphics/Rect;

.field public position:I

.field public qsTileBackground:Landroid/graphics/drawable/RippleDrawable;

.field public final secondaryLabel:Landroid/widget/TextView;

.field public showRippleEffect:Z

.field public final sideView:Landroid/view/ViewGroup;

.field public final singleAnimator:Landroid/animation/ValueAnimator;

.field public squishinessFraction:F

.field public stateDescriptionDeltas:Ljava/lang/CharSequence;

.field public tileState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/qs/QSTileView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    new-instance p3, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-direct {p3, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->position:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    const v1, 0x7f0405e2

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    const v1, 0x7f0405e4

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    const v1, 0x7f0405e3

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    const v1, 0x7f0404c4

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3de147ae    # 0.11f

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v4, v5, v6, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->overlayColorActive:I

    const v3, 0x7f0404c6

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3da3d70a    # 0.08f

    mul-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v5, v6, v7, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->overlayColorInactive:I

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    const v1, 0x7f0404dd

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    const v3, 0x7f0404c5

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    const v3, 0x7f0404c7

    invoke-static {p1, v3, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    invoke-static {p1, v1, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const-wide/16 v3, 0x15e

    invoke-virtual {v1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$singleAnimator$1$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    new-instance v0, Lcom/android/systemui/animation/LaunchableViewDelegate;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$launchableViewDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$launchableViewDelegate$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/animation/LaunchableViewDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    iput-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paddingForLaunch:Landroid/graphics/Rect;

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorEvaluator:Landroid/animation/ArgbEvaluator;

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f040359

    invoke-virtual {v3, v4, v1, p1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Landroid/widget/LinearLayout;->generateViewId()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v1, 0x800013

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setClipToPadding(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundBaseDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v3, v4

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070e6d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070e72

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v3, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070ddb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p3, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v1, 0x7f0d0312

    invoke-virtual {p3, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    const v1, 0x7f0a0d2d

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-nez p3, :cond_1

    move-object p3, v4

    :cond_1
    const v1, 0x7f0a0100

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-nez p2, :cond_2

    move-object v1, v4

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    iput-boolean p1, v1, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->ignoreLastView:Z

    if-nez p2, :cond_3

    move-object p2, v4

    :cond_3
    iput-boolean p1, p2, Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;->forceUnspecifiedMeasure:Z

    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez p2, :cond_5

    move-object p2, v4

    :cond_5
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    move-object p2, v4

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-nez p1, :cond_7

    move-object p1, v4

    :cond_7
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0313

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    const p2, 0x7f0a0323

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    goto :goto_2

    :cond_8
    move-object p1, v4

    :goto_2
    const p2, 0x7f0a028b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez p2, :cond_9

    move-object p2, v4

    :cond_9
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_a

    move-object v4, p1

    :cond_a
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "QSViewImpl must be inflated with a theme that contains Theme.SystemUI.QuickSettings"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;ZLcom/android/systemui/haptics/qs/QSLongPressEffect;)V

    return-void
.end method

.method public static final synthetic access$setVisibility$s-473880907(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public animationsEnabled()Z
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    if-lt v0, p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public final changeCornerRadius(F)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final createTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080e4f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->qsTileBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f080e52

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->qsTileBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    const v2, 0x7f0a013f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/RippleDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x7f0a0989

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundBaseDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    const v2, 0x7f0a098a

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->qsTileBackground:Landroid/graphics/drawable/RippleDrawable;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    return-object v1
.end method

.method public final getBackgroundColorForState(IZ)I
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorActive:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorInactive:I

    goto :goto_1

    :cond_2
    const-string p0, "Invalid state "

    const-string p2, "QSTileViewImpl"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorUnavailable:I

    :goto_1
    return p0
.end method

.method public final getCurrentColors$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, p0

    :goto_1
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v3, p0}, [Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getDetailY()I
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

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getIconWithBackground()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    return-object p0
.end method

.method public final getLabel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getLabelColorForState(IZ)I
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelActive:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelInactive:I

    goto :goto_1

    :cond_2
    const-string p0, "Invalid state "

    const-string p2, "QSTileViewImpl"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorLabelUnavailable:I

    :goto_1
    return p0
.end method

.method public final getLabelContainer()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final getOverlayColorForState(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->overlayColorActive:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->overlayColorInactive:I

    :goto_0
    return p0
.end method

.method public final getPaddingForLaunchAnimation()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->paddingForLaunch:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getSecondaryIcon()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSecondaryLabel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getSecondaryLabelColorForState(IZ)I
    .locals 0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelActive:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelInactive:I

    goto :goto_1

    :cond_2
    const-string p0, "Invalid state "

    const-string p2, "QSTileViewImpl"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->colorSecondaryLabelUnavailable:I

    :goto_1
    return p0
.end method

.method public handleStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->animationsEnabled()Z

    move-result v0

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setClickable(Z)V

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLongClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->INSTANCE:Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x7f03008e

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/plugins/qs/QSTile$State;->getStateText(ILandroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/plugins/qs/QSTile$State;->getSecondaryLabel(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    const-string v4, ", "

    if-eqz v3, :cond_6

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-eqz v3, :cond_6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->spec:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/android/systemui/qs/tileimpl/SubtitleArrayMapping;->subtitleIdsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_7

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-ne v3, v2, :cond_7

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastStateDescription:Ljava/lang/CharSequence;

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v8, 0x0

    if-nez v1, :cond_8

    move-object v1, v8

    goto :goto_3

    :cond_8
    iget-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    :goto_3
    iput-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    instance-of v9, p1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;

    if-eqz v9, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->value:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    if-eq v2, v1, :cond_9

    iput-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v1, :cond_a

    move-object v1, v8

    :cond_a
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v1, :cond_b

    move-object v1, v8

    :cond_b
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    move-object v1, v8

    :goto_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/16 v10, 0x8

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    goto :goto_5

    :cond_e
    move-object v1, v8

    :goto_5
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    goto :goto_6

    :cond_f
    move-object v1, v8

    :goto_6
    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v10

    goto :goto_7

    :cond_10
    move v2, v7

    :goto_7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v11, 0x3

    if-ne v1, v2, :cond_12

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iget-boolean v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    if-eq v1, v2, :cond_18

    :cond_12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "background"

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v2, :cond_13

    move-object v2, v8

    :cond_13
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "label"

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_14

    goto :goto_8

    :cond_14
    move-object v2, v8

    :goto_8
    invoke-virtual {v2}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string/jumbo v3, "secondaryLabel"

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez v2, :cond_15

    move-object v2, v8

    :cond_15
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_9

    :cond_16
    move v2, v7

    :goto_9
    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "chevron"

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v11

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayColor:I

    iget v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOverlayColorForState(I)I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-string v3, "overlay"

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImplKt;->access$colorValuesHolder(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->singleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_a

    :cond_17
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v1

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result v2

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v3

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iget-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v4

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOverlayColorForState(I)I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIIII)V

    :cond_18
    :goto_a
    iget-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->sideViewCustomDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v1, :cond_19

    move-object v1, v8

    :cond_19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v0, :cond_1a

    move-object v0, v8

    :cond_1a
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez v0, :cond_1b

    move-object v0, v8

    :cond_1b
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_1c
    if-eqz v9, :cond_21

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$AdapterState;->forceExpandIcon:Z

    if-eqz v0, :cond_1d

    goto :goto_b

    :cond_1d
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v0, :cond_1e

    move-object v0, v8

    :cond_1e
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v0, :cond_1f

    move-object v0, v8

    :cond_1f
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez v0, :cond_20

    move-object v0, v8

    :cond_20
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_c

    :cond_21
    :goto_b
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v0, :cond_22

    move-object v0, v8

    :cond_22
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v0, :cond_23

    move-object v0, v8

    :cond_23
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez v0, :cond_24

    move-object v0, v8

    :cond_24
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_c
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v0, :cond_25

    move-object v0, v8

    :cond_25
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    xor-int/2addr v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->disabledByPolicy:Z

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->getColor(Lcom/android/systemui/plugins/qs/QSTile$State;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastIconTint:I

    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/systemui/plugins/qs/QSTileView;->getLongPressEffectDuration()I

    move-result v1

    if-gtz v1, :cond_26

    goto/16 :goto_14

    :cond_26
    iget v2, v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->effectDuration:I

    if-ne v1, v2, :cond_27

    goto :goto_13

    :cond_27
    iput v1, v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->effectDuration:I

    sget-object v2, Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;->INSTANCE:Lcom/android/systemui/haptics/qs/LongPressHapticBuilder;

    iget-object v3, v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->durations:[I

    if-eqz v3, :cond_28

    aget v4, v3, v7

    goto :goto_d

    :cond_28
    move v4, v7

    :goto_d
    if-eqz v3, :cond_29

    aget v3, v3, v6

    goto :goto_e

    :cond_29
    move v3, v7

    :goto_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "LongPressHapticBuilder"

    if-eqz v4, :cond_2e

    if-nez v3, :cond_2a

    goto :goto_11

    :cond_2a
    add-int/lit8 v3, v3, 0x63

    if-ge v1, v3, :cond_2b

    const-string v1, "Cannot fit long-press hint signal in the effect duration. No signal created"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_2b
    const/16 v1, 0x4b

    div-int/2addr v1, v4

    const/16 v2, 0x18

    div-int/2addr v2, v4

    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v3

    move v4, v7

    :goto_f
    const v5, 0x3da3d70a    # 0.08f

    if-ge v4, v1, :cond_2c

    invoke-virtual {v3, v10, v5, v7}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_2c
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {v3, v11, v1, v7}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    move v1, v7

    :goto_10
    if-ge v1, v2, :cond_2d

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    div-float v4, v5, v4

    invoke-virtual {v3, v10, v4, v7}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    goto :goto_10

    :cond_2d
    invoke-virtual {v3}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v8

    goto :goto_12

    :cond_2e
    :goto_11
    const-string v1, "The LOW_TICK and/or SPIN primitives are not supported. No signal created."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    iput-object v8, v0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->longPressHint:Landroid/os/VibrationEffect;

    sget-object v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->IDLE:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    :goto_13
    iput-boolean v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initializeLongPressProperties(II)V

    goto :goto_15

    :cond_2f
    :goto_14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isClickable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    iput-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    iput-object v8, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    :goto_15
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final init(Lcom/android/systemui/plugins/qs/QSTile;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;-><init>(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setHapticFeedbackEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    iput-object p1, v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->qsTile:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object v0, v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->expandable:Lcom/android/systemui/animation/Expandable;

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    iput-object p1, v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$2;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$3;

    invoke-direct {v2, p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$init$3;-><init>(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/animation/Expandable;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public final initializeLongPressProperties(II)V
    .locals 26

    move-object/from16 v0, p0

    new-instance v11, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    move/from16 v1, p1

    int-to-float v12, v1

    move/from16 v1, p2

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v14, 0x7f070d2a

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v4, v1

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v5

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result v6

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v7

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    invoke-virtual {v0, v1, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v8

    iget v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOverlayColorForState(I)I

    move-result v9

    iget v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastIconTint:I

    move-object v1, v11

    move v2, v12

    move v3, v13

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;-><init>(FFFIIIIII)V

    iput-object v11, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    new-instance v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    const v2, 0x3f99999a    # 1.2f

    mul-float v17, v12, v2

    const v2, 0x3f8ccccd    # 1.1f

    mul-float v18, v13, v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x14

    int-to-float v3, v3

    sub-float v19, v2, v3

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v20

    invoke-virtual {v0, v2, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result v21

    invoke-virtual {v0, v2, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v22

    invoke-virtual {v0, v2, v15}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v23

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOverlayColorForState(I)I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0404c4

    invoke-static {v2, v3, v15}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v25

    move-object/from16 v16, v1

    invoke-direct/range {v16 .. v25}, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;-><init>(FFFIIIIII)V

    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    return-void
.end method

.method public final onActivityLaunchAnimationEnd()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->resetLongPressEffectProperties()V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    const v1, 0x7f070e91

    invoke-static {p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    invoke-static {p1, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070ddb

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070e6d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e72

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v1}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070ddc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->labelContainer:Lcom/android/systemui/qs/tileimpl/IgnorableChildLinearLayout;

    if-nez v2, :cond_2

    move-object v2, v0

    :cond_2
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->sideView:Landroid/view/ViewGroup;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    move-object v1, v0

    :cond_4
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070d72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->customDrawableView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    move-object v2, v0

    :cond_5
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->createTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundBaseDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    move-object v1, v0

    :cond_6
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    iget p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayColor:I

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v1

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayColor:I

    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget-object p0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->stateDescriptionDeltas:Ljava/lang/CharSequence;

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez v0, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    move-object v1, v2

    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    if-eqz v0, :cond_6

    const-class v0, Landroid/widget/Button;

    const-string v0, "android.widget.Button"

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->accessibilityClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_LONG_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1300bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_7
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->position:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    iget v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->position:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;-><init>(IIIIZ)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    :cond_8
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p2, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const p2, 0x3f8ccccd    # 1.1f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    :cond_3
    :goto_1
    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    const-wide/16 v0, 0x1000

    const-string v2, "QSTileViewImpl#onMeasure"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;

    invoke-virtual {p1}, Lcom/android/systemui/plugins/qs/QSTile$State;->copy()Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$StateChangeRunnable;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;Lcom/android/systemui/plugins/qs/QSTile$State;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v1, :cond_b

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    iget-object v2, p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v3, Lcom/android/systemui/haptics/qs/QSLongPressEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_3

    const/4 v1, 0x2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->this$0:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->resetLongPressEffectProperties()V

    iget-object p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffectAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->TIMEOUT_WAIT:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p1, v1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onTouchEvent$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$onTouchEvent$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_5
    :goto_2
    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->RUNNING_FORWARD:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    if-ne p1, v1, :cond_b

    sget-object p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->RUNNING_BACKWARDS:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    iget-object p0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->onReverseAnimator()V

    goto :goto_4

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    iget-object p1, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->state:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    sget-object v2, Lcom/android/systemui/haptics/qs/QSLongPressEffect$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_a

    const/4 v1, 0x4

    if-eq p1, v1, :cond_9

    goto :goto_4

    :cond_9
    sget-object p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->RUNNING_BACKWARDS:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    iget-object p0, p0, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->callback:Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl$initLongPressEffectCallback$1;->onReverseAnimator()V

    goto :goto_4

    :cond_a
    sget-object p1, Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;->IDLE:Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/haptics/qs/QSLongPressEffect;->setState(Lcom/android/systemui/haptics/qs/QSLongPressEffect$State;)V

    :cond_b
    :goto_4
    return v0
.end method

.method public final resetLongPressEffectProperties()V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v1, :cond_0

    iget v1, v1, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->width:F

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    float-to-int v2, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v2

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070d2a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->changeCornerRadius(F)V

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getBackgroundColorForState(IZ)I

    move-result v3

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getLabelColorForState(IZ)I

    move-result v4

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v5

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    iget-boolean v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastDisabledByPolicy:Z

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getSecondaryLabelColorForState(IZ)I

    move-result v6

    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastState:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->getOverlayColorForState(I)I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setAllColors(IIIII)V

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->mIcon:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->lastIconTint:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setTint(Landroid/widget/ImageView;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    return-void
.end method

.method public final setAllColors(IIIII)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundBaseDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundColor:I

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->label:Landroid/widget/TextView;

    if-nez p1, :cond_1

    move-object p1, v1

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->secondaryLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->chevronView:Landroid/widget/ImageView;

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, p1

    :goto_1
    invoke-virtual {v1, p5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput p5, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundOverlayColor:I

    return-void
.end method

.method public final setClickable(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->showRippleEffect:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->qsTileBackground:Landroid/graphics/drawable/RippleDrawable;

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->backgroundDrawable:Landroid/graphics/drawable/LayerDrawable;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p1

    :goto_1
    move-object p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->position:I

    return-void
.end method

.method public final setShouldBlockVisibilityChanges(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setShouldBlockVisibilityChanges(Z)V

    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->launchableViewDelegate:Lcom/android/systemui/animation/LaunchableViewDelegate;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/LaunchableViewDelegate;->setVisibility(I)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->locInScreen:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    const-string v3, "locInScreen=("

    const-string v4, ", "

    const-string v5, ")"

    invoke-static {v2, v1, v3, v4, v5}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->icon:Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", iconView="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->tileState:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", tileState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    return-object p0
.end method

.method public final updateHeight()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->haveLongPressPropertiesBeenReset:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->resetLongPressEffectProperties()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->heightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->squishinessFraction:F

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    const v2, 0x3dcccccd    # 0.1f

    add-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBottom(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setScrollY(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->longPressEffect:Lcom/android/systemui/haptics/qs/QSLongPressEffect;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->initialLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    iput v3, v0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->finalLongPressProperties:Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const v0, 0x3f99999a    # 1.2f

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/android/systemui/qs/tileimpl/QSLongPressProperties;->height:F

    :cond_5
    :goto_2
    return-void
.end method
