.class public final Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public alpha:I

.field public bitmapLoaded:Z

.field public calculatedSum:F

.field public image:Landroid/graphics/Bitmap;

.field public isBackground:Z

.field public matrix:Landroid/graphics/Matrix;

.field public path:Ljava/lang/String;

.field public prevAlpha:I

.field public stayPoint1:I

.field public stayPoint2:I

.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    return-object p0
.end method

.method public final setAlpha(FF)V
    .locals 9

    cmpg-float p1, p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mRangeOfRotation:I

    int-to-float v3, v2

    rem-float/2addr p2, v3

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->calculatedSum:F

    add-int/lit8 v3, v2, -0x3

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    int-to-float v2, v2

    sub-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->calculatedSum:F

    goto :goto_1

    :cond_1
    const/high16 v3, -0x3fc00000    # -3.0f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->calculatedSum:F

    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "calculatedSum = "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->calculatedSum:F

    const-string v3, "MotionWallpaper"

    invoke-static {p2, v2, v3}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->calculatedSum:F

    iget v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint1:I

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    const/4 v5, -0x3

    const/high16 v6, 0x41c00000    # 24.0f

    if-ltz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_3

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz v4, :cond_4

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    :cond_4
    int-to-float v4, v2

    if-ne v2, v5, :cond_5

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v7, v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mRangeOfRotation:I

    int-to-float v7, v7

    add-float/2addr v4, v7

    :cond_5
    iget v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v8, v7

    cmpl-float v8, p2, v8

    if-lez v8, :cond_6

    add-int/lit8 v7, v7, 0x18

    int-to-float v7, v7

    cmpg-float v7, p2, v7

    if-gez v7, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v4, :cond_7

    if-eqz p1, :cond_7

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    goto :goto_2

    :cond_6
    cmpg-float v7, p2, v4

    if-gez v7, :cond_7

    sub-float/2addr v4, v6

    cmpl-float v4, p2, v4

    if-lez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v4, :cond_7

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    :cond_7
    :goto_2
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    const/16 v1, 0xff

    if-eqz p1, :cond_8

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    goto :goto_3

    :cond_8
    int-to-float p1, v2

    if-ne v2, v5, :cond_9

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mRangeOfRotation:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    :cond_9
    iget v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    int-to-float v2, v0

    cmpl-float v2, p2, v2

    const-string v4, "Foreground alpha = "

    const/high16 v5, 0x437f0000    # 255.0f

    if-lez v2, :cond_a

    add-int/lit8 v2, v0, 0x18

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_a

    int-to-float p1, v0

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v6

    mul-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    invoke-static {p2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_a
    cmpg-float v0, p2, p1

    if-gez v0, :cond_b

    sub-float v0, p1, v6

    cmpl-float v0, p2, v0

    if-lez v0, :cond_b

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, v6

    mul-float/2addr p1, v5

    float-to-int p1, p1

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    invoke-static {p2, v3, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_3

    :cond_b
    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    const-string p1, "disappear!!"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    if-le p1, v1, :cond_c

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    :cond_c
    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    return-void
.end method
