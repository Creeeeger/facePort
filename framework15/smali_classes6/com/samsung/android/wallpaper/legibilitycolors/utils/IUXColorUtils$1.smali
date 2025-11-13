.class Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "IUXColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;->getGradation(IIIIF)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;

.field final synthetic blacklist val$angle:F

.field final synthetic blacklist val$colorA:I

.field final synthetic blacklist val$colorB:I

.field final synthetic blacklist val$gradient_hegith:I

.field final synthetic blacklist val$gradient_width:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;IIIFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->this$0:Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;

    iput p2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    iput p3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorA:I

    iput p4, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorB:I

    iput p5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$angle:F

    iput p6, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_width:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist resize(II)Landroid/graphics/Shader;
    .locals 9

    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float v4, v0

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorA:I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorB:I

    filled-new-array {v0, v1}, [I

    move-result-object v5

    const/4 v0, 0x2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iget v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$angle:F

    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
