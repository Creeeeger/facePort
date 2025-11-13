.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;
.super Landroid/view/SurfaceView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public mCanvas:Landroid/graphics/Canvas;

.field public final mHolder:Landroid/view/SurfaceHolder;

.field public mIsBlackMaskModeOn:Z

.field public final mPaint:Landroid/graphics/Paint;

.field public final mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "BSS_BlackMaskView"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mHolder:Landroid/view/SurfaceHolder;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 22
    .line 23
    .line 24
    new-instance p2, Landroid/graphics/Paint;

    .line 25
    .line 26
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mPaint:Landroid/graphics/Paint;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 33
    .line 34
    .line 35
    const/high16 v0, -0x1000000

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    .line 39
    .line 40
    const/4 p2, -0x2

    .line 41
    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 42
    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public setBlackMaskMode(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mIsBlackMaskModeOn:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mIsBlackMaskModeOn:Z

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mHolder:Landroid/view/SurfaceHolder;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    const-string p1, "mHolder is null"

    .line 18
    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mCanvas:Landroid/graphics/Canvas;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    const-string v0, "mCanvas is null"

    .line 35
    .line 36
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mCanvas:Landroid/graphics/Canvas;

    .line 40
    .line 41
    if-eqz p1, :cond_4

    .line 42
    .line 43
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mHolder:Landroid/view/SurfaceHolder;

    .line 44
    .line 45
    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    :try_start_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 52
    .line 53
    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 55
    .line 56
    .line 57
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mIsBlackMaskModeOn:Z

    .line 58
    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mCanvas:Landroid/graphics/Canvas;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mPaint:Landroid/graphics/Paint;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    .line 67
    .line 68
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mCanvas:Landroid/graphics/Canvas;

    .line 69
    .line 70
    if-eqz p1, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    :goto_1
    return-void

    .line 74
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mCanvas:Landroid/graphics/Canvas;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mHolder:Landroid/view/SurfaceHolder;

    .line 79
    .line 80
    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    throw p1
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 p2, 0x1

    .line 8
    invoke-virtual {p1, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;->mSurfaceTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    return-void
.end method
