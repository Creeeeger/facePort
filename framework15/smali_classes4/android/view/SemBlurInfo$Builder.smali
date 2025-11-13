.class public Landroid/view/SemBlurInfo$Builder;
.super Ljava/lang/Object;
.source "SemBlurInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SemBlurInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist CURVEGRAPH_CURVE_MAX_VALUE:F = 100.0f

.field private static final blacklist CURVEGRAPH_CURVE_MIN_VALUE:F = -100.0f

.field private static final blacklist CURVEGRAPH_MAX_XY_VALUE:F = 255.0f

.field private static final blacklist CURVEGRAPH_MIN_XY_VALUE:F = 0.0f

.field private static final blacklist FLAG_FINISH_BLUR_INFO:I = 0x100

.field private static final blacklist FLAG_SET_BACKGROUND_BLUR_COLOR:I = 0x8

.field private static final blacklist FLAG_SET_BACKGROUND_BLUR_CORNER_RADIUS:I = 0x10

.field private static final blacklist FLAG_SET_BACKGROUND_CANVAS_SCALE:I = 0x20

.field private static final blacklist FLAG_SET_BLUR_BITMAP:I = 0x2

.field private static final blacklist FLAG_SET_BLUR_MODE:I = 0x1

.field private static final blacklist FLAG_SET_BLUR_RADIUS:I = 0x4

.field public static final blacklist FLAG_SET_COLOR_CURVE:I = 0x80

.field public static final blacklist FLAG_SET_PRESET:I = 0x40

.field private static final blacklist SATURATION_MAX_VALUE:F = 1.0f

.field private static final blacklist SATURATION_MIN_VALUE:F = -1.0f


# instance fields
.field private blacklist mBackgroundBlurColor:I

.field private blacklist mBlurMode:I

.field private blacklist mBlurRadius:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mCanvasDownScale:I

.field private blacklist mCapturedBitmap:Landroid/graphics/Bitmap;

.field private blacklist mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

.field private blacklist mCornerRadiusBL:F

.field private blacklist mCornerRadiusBR:F

.field private blacklist mCornerRadiusTL:F

.field private blacklist mCornerRadiusTR:F

.field private blacklist mPreset:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const/16 v1, 0x80

    iput v1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    const/16 v2, 0x8

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    const/4 v2, 0x0

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iput v2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    iput-object v1, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    iput v0, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkValueRange(FFF)F
    .locals 2

    move v0, p1

    cmpl-float v1, p1, p2

    if-lez v1, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    cmpg-float v1, p1, p3

    if-gez v1, :cond_1

    move v0, p3

    :cond_1
    :goto_0
    return v0
.end method

.method public static blacklist getBlurPresetAttrs(I)[F
    .locals 2

    const/16 v0, 0x65

    if-lt p0, v0, :cond_0

    const/16 v0, 0x89

    if-gt p0, v0, :cond_0

    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetBLUR_PRESET()[[F

    move-result-object v0

    add-int/lit8 v1, p0, -0x65

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurPreset ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is not valid. getBlurPresetAttrs return null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBlurInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_DARK()[F

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_DARK()[F

    move-result-object v0

    return-object v0

    :pswitch_2
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_DARK()[F

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_ULTRA_BACKGROUND_LIGHT()[F

    move-result-object v0

    return-object v0

    :pswitch_4
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_DIM_BACKGROUND_LIGHT()[F

    move-result-object v0

    return-object v0

    :pswitch_5
    invoke-static {}, Landroid/view/SemBlurInfo;->-$$Nest$sfgetCOLOR_CURVE_PRESET_SPATIAL_BACKGROUND_LIGHT()[F

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist hidden_build()Landroid/view/SemBlurInfo;
    .locals 1

    invoke-virtual {p0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v0

    return-object v0
.end method

.method private greylist hidden_setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private greylist hidden_setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private greylist hidden_setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist build()Landroid/view/SemBlurInfo;
    .locals 13

    invoke-direct {p0}, Landroid/view/SemBlurInfo$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x80

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const-wide/16 v4, 0x40

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, BlurPreset and BlurColorCurve can not be used together"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create SemBlurInfo, you set the wrong preset value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const-wide/16 v4, 0x20

    const-wide/16 v6, 0x2

    if-nez v0, :cond_6

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW, can not set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const/4 v1, 0x1

    const-wide/16 v8, 0x10

    const-wide/16 v10, 0x8

    if-ne v0, v1, :cond_b

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v10

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set canvasDownScale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_WINDOW_CAPTURED, must set capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget v0, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v6

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v10

    cmp-long v0, v0, v2

    if-nez v0, :cond_d

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v2

    if-nez v0, :cond_c

    goto :goto_2

    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundCornerRadius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not set backgroundColor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is BLUR_MODE_CANVAS, can not capturedBitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_2
    new-instance v0, Landroid/view/SemBlurInfo;

    iget v3, p0, Landroid/view/SemBlurInfo$Builder;->mBlurMode:I

    iget-object v4, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    iget v6, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    iget v7, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iget v8, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iget v9, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iget v10, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    iget v11, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    iget-object v12, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Landroid/view/SemBlurInfo;-><init>(ILandroid/graphics/Bitmap;IIFFFFILandroid/view/SemBlurInfo$ColorCurve;)V

    return-object v0

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to create SemBlurInfo, Blurmode is not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBackgroundBlurColor:I

    return-object p0
.end method

.method public whitelist setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cornerRadius = ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is negative, set to 0.0f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemBlurInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;

    return-object p0
.end method

.method public whitelist setBackgroundCornerRadius(FFFF)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTL:F

    iput p2, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusTR:F

    iput p3, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBL:F

    iput p4, p0, Landroid/view/SemBlurInfo$Builder;->mCornerRadiusBR:F

    return-object p0
.end method

.method public whitelist setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/SemBlurInfo$Builder;->mCapturedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public whitelist setCanvasScale(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mCanvasDownScale:I

    return-object p0
.end method

.method public whitelist setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;
    .locals 9

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/view/SemBlurInfo$ColorCurve;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, p1, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v3

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v2, -0x3d380000    # -100.0f

    invoke-direct {p0, p2, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v4

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    invoke-direct {p0, p3, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v5

    invoke-direct {p0, p4, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v6

    invoke-direct {p0, p5, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v7

    invoke-direct {p0, p6, v1, v2}, Landroid/view/SemBlurInfo$Builder;->checkValueRange(FFF)F

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v0, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    return-object p0
.end method

.method public whitelist setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;
    .locals 9

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mPreset:I

    invoke-static {p1}, Landroid/view/SemBlurInfo$Builder;->getBlurPresetAttrs(I)[F

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    new-instance v1, Landroid/view/SemBlurInfo$ColorCurve;

    const/4 v2, 0x1

    aget v3, v0, v2

    const/4 v2, 0x2

    aget v4, v0, v2

    const/4 v2, 0x3

    aget v5, v0, v2

    const/4 v2, 0x4

    aget v6, v0, v2

    const/4 v2, 0x5

    aget v7, v0, v2

    const/4 v2, 0x6

    aget v8, v0, v2

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/SemBlurInfo$ColorCurve;-><init>(FFFFFF)V

    iput-object v1, p0, Landroid/view/SemBlurInfo$Builder;->mColorCurve:Landroid/view/SemBlurInfo$ColorCurve;

    :cond_0
    return-object p0
.end method

.method public whitelist setRadius(I)Landroid/view/SemBlurInfo$Builder;
    .locals 4

    iget-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/SemBlurInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/view/SemBlurInfo$Builder;->mBlurRadius:I

    return-object p0
.end method
