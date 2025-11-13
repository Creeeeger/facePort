.class public final Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;
.super Ljava/lang/Object;
.source "BackgroundBlurDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlurRegion"
.end annotation


# static fields
.field private static final blacklist COLOR_CURVE_ITEM_SIZE:I = 0x10

.field private static final blacklist DEFAULT_ITEM_SIZE:I = 0xa


# instance fields
.field public final blacklist alpha:F

.field public final blacklist blurRadius:I

.field public final blacklist colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field public final blacklist cornerRadiusBL:F

.field public final blacklist cornerRadiusBR:F

.field public final blacklist cornerRadiusTL:F

.field public final blacklist cornerRadiusTR:F

.field private blacklist mTranslationZ:I

.field public final blacklist rect:Landroid/graphics/Rect;

.field private blacklist showDebug:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmTranslationZ(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->mTranslationZ:I

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->showDebug:Z

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->mTranslationZ:I

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationZ()F

    move-result v1

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getScaleX()F

    move-result v6

    mul-float/2addr v0, v6

    invoke-virtual {v5}, Landroid/view/View;->getTranslationZ()F

    move-result v6

    add-float/2addr v1, v6

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scale : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",translationZ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BackgroundBlurDrawable"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    float-to-int v3, v1

    iput v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->mTranslationZ:I

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v3

    mul-float/2addr v3, v0

    iput v3, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmColorCurve(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->isShowDebug()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->showDebug:Z

    iget-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->showDebug:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "BlurRegion@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method blacklist toFloatArray()[F
    .locals 6

    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    const/16 v1, 0xa

    const/16 v2, 0x10

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v3, v0, [F

    iget v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    int-to-float v4, v4

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    aput v5, v3, v4

    iget-object v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    const/4 v5, 0x2

    aput v4, v3, v5

    iget-object v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x3

    aput v4, v3, v5

    iget-object v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    const/4 v5, 0x4

    aput v4, v3, v5

    iget-object v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v4, 0x6

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    aput v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    aput v5, v3, v4

    const/16 v4, 0x8

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    aput v5, v3, v4

    const/16 v4, 0x9

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    aput v5, v3, v4

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mMinX:F

    aput v2, v3, v1

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v1, v1, Landroid/view/SemBlurInfo$ColorCurve;->mMinY:F

    const/16 v2, 0xb

    aput v1, v3, v2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v1, v1, Landroid/view/SemBlurInfo$ColorCurve;->mMaxX:F

    const/16 v2, 0xc

    aput v1, v3, v2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v1, v1, Landroid/view/SemBlurInfo$ColorCurve;->mMaxY:F

    const/16 v2, 0xd

    aput v1, v3, v2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v1, v1, Landroid/view/SemBlurInfo$ColorCurve;->mCurveBias:F

    const/16 v2, 0xe

    aput v1, v3, v2

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v1, v1, Landroid/view/SemBlurInfo$ColorCurve;->mSaturation:F

    const/16 v2, 0xf

    aput v1, v3, v2

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->showDebug:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "toFloatArray: BlurRegion@"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rect="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRegion{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "blurRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", corners={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}, alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTranslationZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->mTranslationZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", blurColorCurve="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
