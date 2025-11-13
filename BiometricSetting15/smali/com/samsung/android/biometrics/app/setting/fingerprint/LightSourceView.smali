.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;
.super Landroid/view/SurfaceView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public mCanvas:Landroid/graphics/Canvas;

.field public final mContext:Landroid/content/Context;

.field public mCurrentRotation:I

.field public mHasPendingDraw:Z

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mIsLightSourceShown:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public mPosX:I

.field public mPosY:I

.field public mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

.field public mSize:I

.field public final mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Landroid/view/SurfaceControl$Transaction;

    .line 5
    .line 6
    invoke-direct {p2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 18
    .line 19
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 20
    .line 21
    .line 22
    new-instance p2, Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 34
    .line 35
    .line 36
    const/4 p0, -0x2

    .line 37
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final draw()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    const-string v1, "BSS_LightSourceView"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "mHolder is null"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v2, 0x0

    .line 14
    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    const-string v0, "mCanvas is null"

    .line 26
    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mIsLightSourceShown:Z

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 45
    .line 46
    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    return-void

    .line 50
    :cond_3
    :try_start_1
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 53
    .line 54
    .line 55
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mIsLightSourceShown:Z

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    .line 60
    .line 61
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosX:I

    .line 62
    .line 63
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSize:I

    .line 64
    .line 65
    div-int/lit8 v3, v2, 0x2

    .line 66
    .line 67
    add-int/2addr v1, v3

    .line 68
    int-to-float v1, v1

    .line 69
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosY:I

    .line 70
    .line 71
    div-int/lit8 v4, v2, 0x2

    .line 72
    .line 73
    add-int/2addr v3, v4

    .line 74
    int-to-float v3, v3

    .line 75
    int-to-float v2, v2

    .line 76
    const/high16 v4, 0x40000000    # 2.0f

    .line 77
    .line 78
    div-float/2addr v2, v4

    .line 79
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    .line 83
    .line 84
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    .line 85
    .line 86
    if-eqz v0, :cond_5

    .line 87
    .line 88
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 89
    .line 90
    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    return-void

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCanvas:Landroid/graphics/Canvas;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHolder:Landroid/view/SurfaceHolder;

    .line 99
    .line 100
    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    throw v0
.end method

.method public final handleLightSource(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCurrentRotation:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->setLightSourceInfo()V

    .line 14
    .line 15
    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mIsLightSourceShown:Z

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->draw()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    const-string v0, "onConfigurationChanged : "

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-string p1, "BSS_LightSourceView"

    .line 19
    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final setLightSourceInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getRotation(Landroid/content/Context;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCurrentRotation:I

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->getSensorImagePoint(Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 24
    .line 25
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosX:I

    .line 26
    .line 27
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 28
    .line 29
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPosY:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 32
    .line 33
    iget v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 34
    .line 35
    iput v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSize:I

    .line 36
    .line 37
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mPaint:Landroid/graphics/Paint;

    .line 38
    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v3, "#ff"

    .line 42
    .line 43
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mLightColor:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    const-string v2, "setLightSourceInfo : "

    .line 67
    .line 68
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ", "

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mCurrentRotation:I

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    const-string v0, "BSS_LightSourceView"

    .line 89
    .line 90
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const/4 p3, 0x1

    .line 8
    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->draw()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 13
    .line 14
    .line 15
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->mHasPendingDraw:Z

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/LightSourceView;->draw()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method
