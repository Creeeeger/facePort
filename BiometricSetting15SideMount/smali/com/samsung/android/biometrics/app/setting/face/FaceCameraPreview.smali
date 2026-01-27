.class public Lcom/samsung/android/biometrics/app/setting/face/FaceCameraPreview;
.super Landroid/view/SurfaceView;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0}, Landroid/view/SurfaceView;->invalidate()V

    return-void
.end method


# virtual methods
.method public final onSizeChanged(IIII)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    move-result-object v0

    .line 4
    const v1, 0x7f0b0009

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    const v3, 0x3faa3d71    # 1.33f

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    .line 14
    move-result v0

    .line 15
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 16
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {p0, v1}, Landroid/view/SurfaceView;->setTranslationX(F)V

    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v3, v0

    .line 21
    sub-float/2addr v0, v3

    .line 22
    const/high16 v3, 0x40000000    # 2.0f

    .line 23
    div-float/2addr v0, v3

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setTranslationY(F)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v3}, Landroid/view/SurfaceView;->setScaleX(F)V

    .line 29
    invoke-virtual {p0, v2}, Landroid/view/SurfaceView;->setScaleY(F)V

    .line 30
    int-to-float v0, v0

    .line 31
    mul-float/2addr v3, v0

    .line 32
    sub-float/2addr v0, v3

    .line 33
    const/high16 v3, 0x40000000    # 2.0f

    .line 34
    div-float/2addr v0, v3

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setTranslationX(F)V

    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setTranslationY(F)V

    .line 38
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method
