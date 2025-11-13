.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;",
        "Landroid/graphics/drawable/Drawable;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public alpha:I

.field public final currentScale:F

.field public final fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public final movingTargetFpIcon:Landroid/graphics/drawable/Drawable;

.field public final sensorLeftOffset:F

.field public final sensorOutlinePaint:Landroid/graphics/Paint;

.field public final sensorRectBounds:Landroid/graphics/Rect;

.field public final sensorTopOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->currentScale:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorRectBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140a30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/PathShape;

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    const/high16 v3, 0x42900000    # 72.0f

    invoke-direct {v2, v0, v3, v3}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    sget-object v0, Lcom/android/settings/R$styleable;->BiometricsEnrollView:[I

    const v2, 0x7f04009f

    const v3, 0x7f1501fd

    invoke-virtual {p1, p2, v0, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorOutlinePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0803e7

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->movingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    const/16 p1, 0xff

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->movingTargetFpIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorOutlinePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorRectBounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorRectBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->currentScale:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v0, v1, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->sensorOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/RectF;->roundOut(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/modules/enrolling/udfps/ui/widget/UdfpsEnrollIconV2;->alpha:I

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
