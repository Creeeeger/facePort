.class public Lcom/android/systemui/assist/ui/InvocationLightsView;
.super Landroid/view/View;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationBarTransitions$DarkIntensityListener;


# instance fields
.field public final mAssistInvocationLights:Ljava/util/ArrayList;

.field public final mDarkColor:I

.field public final mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

.field public final mLightColor:I

.field public mNavigationBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPath:Landroid/graphics/Path;

.field public mRegistered:Z

.field public final mScreenLocation:[I

.field public final mUseNavBarColor:Z

.field public final mViewHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/assist/ui/InvocationLightsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    new-instance p3, Landroid/graphics/Path;

    invoke-direct {p3}, Landroid/graphics/Path;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    const/4 p3, 0x2

    new-array p4, p3, [I

    iput-object p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mRegistered:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    int-to-float v3, v1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v3, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    if-eqz p2, :cond_1

    if-ne p2, p3, :cond_0

    goto :goto_1

    :cond_0
    iget p2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    move v7, p2

    goto :goto_2

    :cond_1
    :goto_1
    iget p2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    if-eqz p2, :cond_3

    if-ne p2, p3, :cond_2

    goto :goto_4

    :cond_2
    iget p2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_3
    move v8, p2

    goto :goto_5

    :cond_3
    :goto_4
    iget p2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    :goto_5
    new-instance p2, Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    new-instance v5, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;

    invoke-direct {v5, p1}, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;-><init>(Landroid/content/Context;)V

    div-int/lit8 v6, v1, 0x2

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;-><init>(Landroid/content/Context;Lcom/android/systemui/assist/ui/CornerPathRenderer;III)V

    iput-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    invoke-static {p1, v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result p2

    invoke-static {p1, p4}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance p3, Landroid/util/DisplayMetrics;

    invoke-direct {p3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, p3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p2, 0x7f0401bd

    invoke-static {p2, p1}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const p3, 0x7f0403e1

    invoke-static {p3, p2}, Lcom/android/settingslib/Utils;->getThemeAttr(ILandroid/content/Context;)I

    move-result p2

    new-instance p3, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p3, v0, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p2, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f040621

    invoke-static {p3, p1, p4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    invoke-static {p2, p1, p4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    move p1, p4

    :goto_6
    const/4 p2, 0x4

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    new-instance p3, Lcom/android/systemui/assist/ui/EdgeLight;

    const/4 v0, 0x0

    invoke-direct {p3, p4, v0, v0}, Lcom/android/systemui/assist/ui/EdgeLight;-><init>(IFF)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_4
    return-void
.end method


# virtual methods
.method public final onDarkIntensity(F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->updateDarkness(F)V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mScreenLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    neg-int v2, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/assist/ui/InvocationLightsView;->renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mViewHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget p2, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const-string p0, "Invalid rotation provided: "

    const-string p2, "PerimeterPathGuide"

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->mRotation:I

    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->computeRegions()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final renderLight(Lcom/android/systemui/assist/ui/EdgeLight;Landroid/graphics/Canvas;)V
    .locals 7

    iget v0, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mLength:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mGuide:Lcom/android/systemui/assist/ui/PerimeterPathGuide;

    iget-object v3, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    iget v4, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mStart:F

    add-float/2addr v0, v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    const/high16 v5, 0x3f800000    # 1.0f

    rem-float/2addr v4, v5

    add-float/2addr v4, v5

    rem-float/2addr v4, v5

    rem-float/2addr v0, v5

    add-float/2addr v0, v5

    rem-float/2addr v0, v5

    cmpl-float v6, v4, v0

    if-lez v6, :cond_0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/android/systemui/assist/ui/PerimeterPathGuide;->strokeSegmentInternal(Landroid/graphics/Path;FF)V

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    iget p1, p1, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPath:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public final setLight(FFI)V
    .locals 2

    if-ltz p3, :cond_0

    const/4 v0, 0x4

    if-lt p3, v0, :cond_1

    :cond_0
    const-string v0, "invalid invocation light index: "

    const-string v1, "InvocationLightsView"

    invoke-static {p3, v0, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/ui/EdgeLight;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/assist/ui/EdgeLight;->setEndpoints(FF)V

    return-void
.end method

.method public final updateDarkness(F)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mUseNavBarColor:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mLightColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mDarkColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/assist/ui/InvocationLightsView;->mAssistInvocationLights:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/assist/ui/EdgeLight;

    iget v4, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    if-eq v4, p1, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    iput p1, v3, Lcom/android/systemui/assist/ui/EdgeLight;->mColor:I

    and-int/2addr v2, v4

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
