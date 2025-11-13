.class public final Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

.field public final synthetic val$curAngularSum:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->val$curAngularSum:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->val$curAngularSum:F

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevStartAngularSum:F

    cmpg-float v1, p1, v1

    const v2, 0x3d4ccccd    # 0.05f

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v1, :cond_1

    iget v1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    sub-float v5, v1, p1

    mul-float/2addr v5, v2

    sub-float/2addr v1, v5

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    iget v1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    invoke-static {p1, v1, v2, v1}, Landroidx/appcompat/graphics/drawable/DrawerArrowDrawable$$ExternalSyntheticOutline0;->m$1(FFFF)F

    move-result v1

    iput v1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    :goto_0
    iget p1, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAnimatedAngularSum:F

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v0, 0x38d1b717    # 1.0E-4f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_4

    if-eqz v3, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "animatedAngle = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    const-string v1, "MotionWallpaper"

    invoke-static {p1, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    move p1, v4

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget v2, v1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAnimatedAngularSum:F

    iget v1, v1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->setAlpha(FF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget-object v0, p1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mUpdateCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;->this$0:Lcom/android/systemui/wallpaper/theme/MotionWallpaper;

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAnimatedAngularSum:F

    :cond_4
    return-void
.end method
