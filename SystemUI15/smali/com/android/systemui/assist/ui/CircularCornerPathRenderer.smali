.class public final Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;
.super Lcom/android/systemui/assist/ui/CornerPathRenderer;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCornerRadiusBottom:I

.field public final mCornerRadiusTop:I

.field public final mHeight:I

.field public final mPath:Landroid/graphics/Path;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/assist/ui/CornerPathRenderer;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/assist/ui/DisplayUtils;->getInvocationCornerRadius(Landroid/content/Context;Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_3

    :cond_3
    :goto_2
    iget p1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_3
    iput p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    return-void
.end method


# virtual methods
.method public final getCornerPath(Lcom/android/systemui/assist/ui/CornerPathRenderer$Corner;)Landroid/graphics/Path;
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    sget-object v0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer$1;->$SwitchMap$com$android$systemui$assist$ui$CornerPathRenderer$Corner:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mHeight:I

    iget v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusBottom:I

    const/4 v4, 0x2

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mWidth:I

    if-eq p1, v4, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mCornerRadiusTop:I

    if-eq p1, v2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    int-to-float v0, v3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    mul-int/lit8 p1, v3, 0x2

    int-to-float v8, p1

    mul-int/2addr v3, v4

    int-to-float v9, v3

    const/high16 v11, -0x3d4c0000    # -90.0f

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v10, 0x43870000    # 270.0f

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    int-to-float v1, v0

    int-to-float v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    mul-int/lit8 p1, v3, 0x2

    sub-int p1, v0, p1

    int-to-float v6, p1

    int-to-float v8, v0

    mul-int/2addr v3, v4

    int-to-float v9, v3

    const/high16 v11, -0x3d4c0000    # -90.0f

    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    sub-int v1, v0, v3

    int-to-float v1, v1

    int-to-float v5, v2

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    mul-int/lit8 p1, v3, 0x2

    sub-int p1, v0, p1

    int-to-float v7, p1

    mul-int/2addr v3, v4

    sub-int p1, v2, v3

    int-to-float v8, p1

    int-to-float v9, v0

    int-to-float v10, v2

    const/high16 v12, -0x3d4c0000    # -90.0f

    const/4 v13, 0x1

    const/high16 v11, 0x42b40000    # 90.0f

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    sub-int v0, v2, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    mul-int/lit8 p1, v3, 0x2

    sub-int p1, v2, p1

    int-to-float v7, p1

    mul-int/2addr v3, v4

    int-to-float v8, v3

    int-to-float v9, v2

    const/high16 v11, -0x3d4c0000    # -90.0f

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/assist/ui/CircularCornerPathRenderer;->mPath:Landroid/graphics/Path;

    return-object p0
.end method
