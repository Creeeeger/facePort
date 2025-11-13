.class public abstract Lcom/android/systemui/biometrics/UdfpsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public _alpha:I

.field public final fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field public final isDisplayConfigured:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/systemui/biometrics/UdfpsDrawableKt;->defaultFactory:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/UdfpsDrawable;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ShapeDrawable;

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    const/16 p2, 0xff

    iput p2, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->_alpha:I

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    return-void
.end method


# virtual methods
.method public final getAlpha()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->_alpha:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->_alpha:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsDrawable;->fingerprintDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
