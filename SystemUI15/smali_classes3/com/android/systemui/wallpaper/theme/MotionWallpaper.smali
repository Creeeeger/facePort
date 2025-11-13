.class public final Lcom/android/systemui/wallpaper/theme/MotionWallpaper;
.super Landroid/widget/FrameLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlphaAnimator:Landroid/animation/ValueAnimator;

.field public mAngularSum:F

.field public mAnimatedAngularSum:F

.field public final mBlendingPaint:Landroid/graphics/Paint;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentWhich:I

.field public mDeltaOfAngularSum:F

.field public final mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

.field public final mInterruptedGyro:Landroid/hardware/Sensor;

.field public final mIsPreview:Z

.field public mIsSensorRegistered:Z

.field public final mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

.field public mMotionBitmapList:Ljava/util/ArrayList;

.field public final mOldBitmapList:Ljava/util/ArrayList;

.field public mPkgName:Ljava/lang/String;

.field public mPkgResources:Landroid/content/res/Resources;

.field public mPrevAngularSum:F

.field public mPrevAnimatedAngularSum:F

.field public mPrevStartAngularSum:F

.field public mRangeOfRotation:I

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTimestamp:J

.field public final mUpdateCallback:Ljava/util/function/Consumer;

.field public mViewHeight:I

.field public mViewWidth:I

.field public final mWallpaperManager:Landroid/app/WallpaperManager;

.field public mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/function/Consumer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Consumer;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Consumer;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/util/function/Consumer;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mCurrentWhich:I

    new-instance v1, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    iput v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mDeltaOfAngularSum:F

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mContext:Landroid/content/Context;

    iput p5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mCurrentWhich:I

    const-string/jumbo p5, "wallpaper"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/app/WallpaperManager;

    iput-object p5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const-string/jumbo p5, "sensor"

    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const p5, 0x1002b

    invoke-virtual {p1, p5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    iput-object p6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mUpdateCallback:Ljava/util/function/Consumer;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    const/4 p5, 0x1

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    const-string p1, "MotionWallpaper"

    const-string p2, ""

    const-string p3, "(Preview)"

    if-eqz p7, :cond_1

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_0

    move-object p2, p3

    :cond_0
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateWallpaperOnMainThread : "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->loadMotionWallpaperBitmaps()V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->initializeMotionBitmaps()V

    goto :goto_1

    :cond_1
    iget-object p6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    if-eqz p6, :cond_3

    invoke-virtual {p6}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p6

    if-nez p6, :cond_3

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_2

    move-object p7, p3

    goto :goto_0

    :cond_2
    move-object p7, p2

    :goto_0
    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " cancel loader = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    invoke-virtual {p6, p5}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    :cond_3
    new-instance p5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    invoke-direct {p5, p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;)V

    iput-object p5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p4, :cond_4

    move-object p2, p3

    :cond_4
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateWallpaper: start load = "

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mLoader:Lcom/android/systemui/wallpaper/theme/MotionWallpaper$1;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p2, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    return-void
.end method


# virtual methods
.method public final init()V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    const-string v2, ""

    const-string v3, "(Preview)"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_1

    move-object v2, v3

    :cond_1
    const-string p0, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-boolean v4, v4, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    if-nez v4, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_4

    move-object v2, v3

    :cond_4
    const-string p0, "bitmapLoaded == false"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    sget-boolean v5, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsExternalLiveWallpaper:Z

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    :goto_1
    const-string v6, "WallpaperUtils"

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v8

    sub-int/2addr v7, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "updateStatusBarHeight - dc = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const/4 v7, -0x1

    :goto_2
    const-string v5, "Height from dc = "

    invoke-static {v7, v5, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-gtz v7, :cond_9

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1050566

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    const-string v0, "Height from resource = "

    invoke-static {v7, v0, v6}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "statusbar statusBarSize = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", view height = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v7, :cond_a

    return-void

    :cond_a
    :goto_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mViewHeight:I

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mViewWidth:I

    if-eqz v4, :cond_13

    if-nez v0, :cond_b

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mRangeOfRotation:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_c

    move-object v4, v3

    goto :goto_4

    :cond_c
    move-object v4, v2

    :goto_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mRangeOfRotation = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mRangeOfRotation:I

    invoke-static {v4, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mDeltaOfAngularSum:F

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mTimestamp:J

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v7, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_8

    :cond_d
    iget-object v7, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mViewHeight:I

    mul-int v10, v7, v9

    iget v11, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mViewWidth:I

    mul-int v12, v11, v8

    const/high16 v13, 0x3f800000    # 1.0f

    if-le v10, v12, :cond_e

    int-to-float v10, v9

    int-to-float v12, v8

    :goto_6
    div-float/2addr v10, v12

    mul-float/2addr v10, v13

    goto :goto_7

    :cond_e
    int-to-float v10, v11

    int-to-float v12, v7

    goto :goto_6

    :goto_7
    int-to-float v11, v11

    int-to-float v7, v7

    mul-float/2addr v7, v10

    sub-float/2addr v11, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v11, v7

    int-to-float v9, v9

    int-to-float v8, v8

    mul-float/2addr v8, v10

    sub-float/2addr v9, v8

    mul-float/2addr v9, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v9, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    int-to-float v7, v7

    int-to-float v8, v8

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput-boolean v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    invoke-virtual {v5, v0, v0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->setAlpha(FF)V

    goto :goto_5

    :cond_f
    :goto_8
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v0, :cond_10

    move-object v2, v3

    :cond_10
    const-string v0, "bitmap is wrong."

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mUpdateCallback:Ljava/util/function/Consumer;

    if-eqz p0, :cond_12

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_12
    return-void

    :cond_13
    :goto_9
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_14

    move-object v2, v3

    :cond_14
    const-string p0, "mViewWidth == 0 || mViewHeight == 0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final initializeMotionBitmaps()V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    const-string v1, ""

    const-string v2, "(Preview)"

    const-string v3, "MotionWallpaper"

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iput-boolean v5, v4, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "BITMAP LOAD FINISH "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_2

    :cond_3
    move-object v4, v1

    :goto_2
    const-string v6, "IndexOutOfBoundsException"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_4

    move-object v4, v2

    goto :goto_3

    :cond_4
    move-object v4, v1

    :goto_3
    const-string v6, "CloneNotSupportedException"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v4, v0

    :goto_5
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    mul-int/lit8 v7, v4, 0x1e

    add-int/lit8 v8, v7, -0x3

    iput v8, v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint1:I

    add-int/lit8 v7, v7, 0x3

    iput v7, v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "it = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v0

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "layer "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "URL :"

    invoke-static {v6, v8}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "type :"

    invoke-static {v6, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->type:I

    invoke-static {v10, v8, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "stayPoint1 :"

    invoke-static {v6, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint1:I

    invoke-static {v10, v8, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "stayPoint2 :"

    invoke-static {v6, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v7, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    invoke-static {v7, v8, v6}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "content = "

    invoke-static {v7, v6, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    goto :goto_6

    :cond_6
    const-string v4, "layers = null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->init()V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v7, :cond_8

    move-object v1, v2

    :cond_8
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearData: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iput-boolean v0, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    iget-object v3, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    move v6, v5

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v7, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    iget-object v6, v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eq v7, v6, :cond_a

    goto :goto_8

    :cond_a
    move v6, v0

    goto :goto_9

    :cond_b
    move v6, v5

    :cond_c
    if-eqz v6, :cond_9

    iget-object v3, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    goto :goto_7

    :cond_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_e
    :goto_a
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_f

    move-object v1, v2

    :cond_f
    const-string p0, "PARSE FAILED"

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadMotionWallpaperBitmaps()V
    .locals 11

    const-string v0, "(Preview)"

    const-string v1, ""

    const-string v2, "MotionWallpaper"

    const-string v3, "/data/overlays/main_packages/"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "motion"

    if-eqz v5, :cond_0

    :try_start_1
    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v3

    goto/16 :goto_5

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mCurrentWhich:I

    invoke-virtual {v5, v7}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".apk"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_2

    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_3
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, v4

    :goto_1
    iput-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    if-nez v3, :cond_2

    const-string v3, "mPkgResources == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    move-object v3, v4

    goto/16 :goto_6

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    const-string v6, "layout"

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v6, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pkg name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") xml name("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ERROR - chosen xml name("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mXmlName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") resource is not exist !!!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :goto_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :goto_6
    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_10

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v7, :cond_6

    move-object v7, v0

    goto :goto_7

    :cond_6
    move-object v7, v1

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "collectOldBitmap: size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    iput-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_8

    move-object v5, v0

    goto :goto_9

    :cond_8
    move-object v5, v1

    :goto_9
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "BITMAP LOAD START "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->type:I

    const/4 v7, 0x1

    if-nez v6, :cond_c

    :try_start_4
    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    iget-object v8, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    const-string v9, "drawable"

    iget-object v10, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_9

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    goto/16 :goto_e

    :catch_2
    move-exception v6

    goto :goto_c

    :cond_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v7, :cond_a

    move-object v7, v0

    goto :goto_b

    :cond_a
    move-object v7, v1

    :goto_b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Fail to get drawable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_e

    :goto_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v8, :cond_b

    move-object v8, v0

    goto :goto_d

    :cond_b
    move-object v8, v1

    :goto_d
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "loadDrawable exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_c
    if-ne v6, v7, :cond_d

    new-instance v6, Ljava/io/File;

    iget-object v8, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_10

    :try_start_5
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPkgResources:Landroid/content/res/Resources;

    iget-object v9, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_e

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10

    :cond_d
    const/4 v7, 0x2

    if-ne v6, v7, :cond_e

    iput-object v4, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    :cond_e
    :goto_e
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz v8, :cond_f

    move-object v8, v0

    goto :goto_f

    :cond_f
    move-object v8, v1

    :goto_f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "loadWallpapers: matrix "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x1e

    add-int/lit8 v7, v6, -0x3

    iput v7, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint1:I

    add-int/lit8 v6, v6, 0x3

    iput v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->stayPoint2:I

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v6}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->setAlpha(FF)V

    goto/16 :goto_a

    :cond_10
    :goto_10
    return-void
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "MotionWallpaper"

    const-string/jumbo v1, "unregisterSensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsSensorRegistered:Z

    :cond_0
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    const-string v2, ""

    const-string v3, "(Preview)"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onDraw()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-boolean v6, v6, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->bitmapLoaded:Z

    if-nez v6, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_2

    move-object v2, v3

    :cond_2
    const-string p0, "bitmapLoaded == false"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move v0, v4

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ", alpha = "

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v5, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const-string v2, "onDraw: recycled bitmap1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "drawBackground!!!! ===> "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v3, v3, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    invoke-static {v3, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-boolean v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->isBackground:Z

    if-nez v2, :cond_9

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_8
    const-string v0, "onDraw: recycled bitmap2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    const-string v0, "drawForeground!!!! ===> "

    invoke-static {v4, v0, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v2, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    invoke-static {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    return-void

    :cond_b
    :goto_5
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_c

    move-object v2, v3

    :cond_c
    const-string p0, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSensorChanged: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mTimestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , timestamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v2, 0x1002b

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_b

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v0, v0, v6

    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    sget-object v7, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v7, v8}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v7, v2}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    if-eq v6, v4, :cond_2

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    goto :goto_0

    :cond_1
    move v6, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    :goto_1
    const-string v7, "axisX: "

    const-string v8, ", axisY: "

    const-string v9, ", axisZ: "

    invoke-static {v7, v3, v8, v5, v9}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    if-nez v6, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_4

    :cond_3
    const-string p0, "axisY is not biggest, stop animation"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz v6, :cond_6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-gtz v10, :cond_5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    :cond_5
    const-string p0, "axisX is not biggest, stop animation"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget v10, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    iput v10, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAngularSum:F

    if-eqz v6, :cond_7

    add-float v6, v10, v3

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    goto :goto_2

    :cond_7
    add-float v6, v10, v5

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    :goto_2
    iget v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    sub-float/2addr v6, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mDeltaOfAngularSum:F

    invoke-static {v7, v3, v8, v5, v9}, Landroidx/compose/animation/core/CubicBezierEasing$$ExternalSyntheticOutline0;->m(Ljava/lang/String;FLjava/lang/String;FLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "mAngularSum: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", mDeltaOfAngularSum: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mDeltaOfAngularSum:F

    invoke-static {v0, v3, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    move v0, v2

    move v3, v0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    iput v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->prevAlpha:I

    iget v6, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAngularSum:F

    iget v7, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAngularSum:F

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->setAlpha(FF)V

    iget v6, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->prevAlpha:I

    iget v5, v5, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->alpha:I

    if-eq v6, v5, :cond_9

    iget v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v6, 0x40400000    # 3.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "mAlphaAnimator isRunning"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    move v3, v4

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mUpdateCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_b

    if-eqz v3, :cond_b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_b
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mTimestamp:J

    :goto_5
    return-void
.end method

.method public final parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const-string v4, "layer"

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    const-string/jumbo v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->type:I

    goto :goto_1

    :cond_3
    const-string v3, "id_path_image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$MotionBitmap;->path:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method public final startAlphaAnimator(FFZ)V
    .locals 3

    const-string v0, "MotionWallpaper"

    const-string v1, "mAlphaAnimator starts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "prevAngularSum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " curAngularSum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p2, v0}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    if-eqz p3, :cond_0

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevStartAngularSum:F

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    iget-object p3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mInterpolator:Lcom/samsung/android/view/animation/SineOut33;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/theme/MotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/theme/MotionWallpaper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/MotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
