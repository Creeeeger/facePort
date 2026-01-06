.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;
.super Landroid/view/SurfaceView;
.source "LightSourceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field private mHasPendingDraw:Z

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsBlackMaskMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPosX:I

.field private mPosY:I

.field private mSize:I

.field private final mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "BSS_LightSourceView"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, -0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->TAG:Ljava/lang/String;

    const-string v1, "mHolder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->TAG:Ljava/lang/String;

    const-string v1, "mCanvas is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mIsBlackMaskMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v0
.end method

.method public setLightSourceInfo(ILcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getSensorImagePoint(ILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosX:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosY:I

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSize:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#ff"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getLightColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public show()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->TAG:Ljava/lang/String;

    const-string v1, "mHolder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->TAG:Ljava/lang/String;

    const-string v1, "mCanvas is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosX:I

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSize:I

    div-int/lit8 v4, v3, 0x2

    add-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosY:I

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    throw v0
.end method

.method public showBlackMaskview()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mIsBlackMaskMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->hide()V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->show()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->show()V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
