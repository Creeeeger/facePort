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
    .param p1, "this$0"    # Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils;

    .line 800
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
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 803
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [I

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorA:I

    const/4 v2, 0x0

    aput v1, v5, v2

    iget v1, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$colorB:I

    const/4 v2, 0x1

    aput v1, v5, v2

    new-array v6, v0, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 809
    .local v0, "lg":Landroid/graphics/LinearGradient;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 810
    .local v1, "rotMat":Landroid/graphics/Matrix;
    iget v2, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$angle:F

    iget v3, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_width:I

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v5, p0, Lcom/samsung/android/wallpaper/legibilitycolors/utils/IUXColorUtils$1;->val$gradient_hegith:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-virtual {v1, v2, v3, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 811
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 813
    .local v2, "transMat":Landroid/graphics/Matrix;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 814
    .local v3, "resultMat":Landroid/graphics/Matrix;
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    .line 815
    invoke-virtual {v0, v3}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 816
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
