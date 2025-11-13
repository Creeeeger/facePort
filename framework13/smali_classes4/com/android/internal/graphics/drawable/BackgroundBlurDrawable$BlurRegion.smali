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

.field private blacklist hashId:Ljava/lang/String;

.field public final blacklist rect:Landroid/graphics/Rect;

.field private blacklist showDebug:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)V
    .locals 3
    .param p1, "drawable"    # Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->hashId:Ljava/lang/String;

    .line 560
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->showDebug:Z

    .line 564
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmAlpha(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    .line 565
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmBlurRadius(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    .line 567
    const/high16 v0, 0x3f800000    # 1.0f

    .line 568
    .local v0, "scaleValue":F
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmScaleX(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v1

    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmScaleY(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 569
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmScaleX(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v0

    .line 572
    :cond_0
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    .line 573
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusTR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    .line 574
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBL(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    .line 575
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmCornerRadiusBR(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    .line 577
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmRect(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    .line 579
    invoke-static {p1}, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;->-$$Nest$fgetmColorCurve(Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable;)Landroid/view/SemBlurInfo$ColorCurve;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    .line 581
    return-void
.end method


# virtual methods
.method blacklist toFloatArray()[F
    .locals 6

    .line 588
    iget-object v0, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    const/16 v1, 0xa

    const/16 v2, 0x10

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 589
    .local v0, "size":I
    :goto_0
    new-array v3, v0, [F

    .line 591
    .local v3, "floatArray":[F
    const/4 v4, 0x0

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->blurRadius:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 592
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->alpha:F

    aput v5, v3, v4

    .line 593
    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 594
    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 595
    const/4 v4, 0x4

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 596
    const/4 v4, 0x5

    iget-object v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->rect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    aput v5, v3, v4

    .line 597
    const/4 v4, 0x6

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTL:F

    aput v5, v3, v4

    .line 598
    const/4 v4, 0x7

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusTR:F

    aput v5, v3, v4

    .line 599
    const/16 v4, 0x8

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBL:F

    aput v5, v3, v4

    .line 600
    const/16 v4, 0x9

    iget v5, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->cornerRadiusBR:F

    aput v5, v3, v4

    .line 602
    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v2, :cond_1

    .line 603
    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mMinX:F

    aput v2, v3, v1

    .line 604
    const/16 v1, 0xb

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mMinY:F

    aput v2, v3, v1

    .line 605
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mMaxX:F

    aput v2, v3, v1

    .line 606
    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mMaxY:F

    aput v2, v3, v1

    .line 607
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mCurveBias:F

    aput v2, v3, v1

    .line 608
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/internal/graphics/drawable/BackgroundBlurDrawable$BlurRegion;->colorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iget v2, v2, Landroid/view/SemBlurInfo$ColorCurve;->mSaturation:F

    aput v2, v3, v1

    .line 611
    :cond_1
    return-object v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurRegion{blurRadius="

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

    .line 625
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

    .line 616
    return-object v0
.end method
