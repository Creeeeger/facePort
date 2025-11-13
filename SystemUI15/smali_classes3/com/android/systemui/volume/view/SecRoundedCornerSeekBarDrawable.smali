.class public final Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field public static final LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;


# instance fields
.field public buttonAnimator:Landroid/animation/ValueAnimator;

.field public buttonColor:I

.field public buttonStartColor:I

.field public context:Landroid/content/Context;

.field public defaultColor:I

.field public endColor:I

.field public gradientColor:I

.field public level:I

.field public shockValueAnimator:Landroid/animation/ValueAnimator;

.field public startColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;-><init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    const-string p1, "#FFFFFF"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    const/16 v1, 0xff

    int-to-float v1, v1

    invoke-static {}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->isBlurEnable()Z

    move-result v2

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {p1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->startColor:I

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    invoke-static {}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->isBlurEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-static {p1, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->gradientColor:I

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->startColor:I

    iget v1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    filled-new-array {p1, v1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v1, 0x1c2

    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonStartColor:I

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonStartColor:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static isBlurEnable()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_CAPTURED_BLUR:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final animateButton(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0xc8

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v2, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    if-eq p1, v2, :cond_2

    filled-new-array {p1, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v2, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonStartColor:I

    if-eq p1, v2, :cond_2

    filled-new-array {p1, v2}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$animateButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$animateButton$1;-><init>(Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public final canApplyTheme()Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->canApplyTheme()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget v3, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    div-int/2addr v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget v3, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->level:I

    if-gt v3, v4, :cond_1

    if-eqz v4, :cond_1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->level:I

    mul-int/2addr v5, v6

    div-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    div-float/2addr v4, v1

    new-instance v13, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    sub-float v6, v4, v5

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    add-float v8, v5, v4

    iget v10, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->startColor:I

    iget v11, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v5, v13

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v3, v13}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    sub-float v6, v4, v6

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v1

    add-float/2addr v7, v0

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    add-float/2addr v8, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    sub-float/2addr v0, p0

    invoke-direct {v5, v6, v7, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v5, v4, v4, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v5, v4, v4, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p1, v3, v0, p0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_2
    return-void
.end method

.method public final getChangingConfigurations()I
    .locals 0

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getChangingConfigurations()I

    move-result p0

    or-int/lit16 p0, p0, 0x1000

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    new-instance v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$RoundedCornerState;

    invoke-super {p0}, Landroid/graphics/drawable/InsetDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$RoundedCornerState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object v0
.end method

.method public final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->level:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->onLevelChange(I)Z

    return-void
.end method

.method public final onLayoutDirectionChanged(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->level:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->onLevelChange(I)Z

    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLayoutDirectionChanged(I)Z

    move-result p0

    return p0
.end method

.method public final onLevelChange(I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    const v2, 0x7f0a0e81

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget v2, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->gradientColor:I

    iget v3, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->level:I

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    div-int/2addr v2, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-lt p1, v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/lit16 v1, v1, 0x2710

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->onLevelChange(I)Z

    move-result p0

    return p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    const v0, 0x7f060aef

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->context:Landroid/content/Context;

    const/16 p1, 0xff

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    int-to-float p1, p1

    invoke-static {}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->isBlurEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const v1, 0x3ecccccd    # 0.4f

    :goto_0
    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->startColor:I

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->gradientColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1c2

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonStartColor:I

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->defaultColor:I

    filled-new-array {p1, v0}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->buttonAnimator:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->context:Landroid/content/Context;

    :goto_1
    return-void
.end method

.method public final setShockColor(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->ALPHA_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    const-wide/16 v2, 0x1c2

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->endColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->gradientColor:I

    if-eq p1, v0, :cond_2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->startColor:I

    iget v0, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->gradientColor:I

    if-eq p1, v0, :cond_2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;->shockValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$setShockColor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable$setShockColor$1;-><init>(Lcom/android/systemui/volume/view/SecRoundedCornerSeekBarDrawable;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
