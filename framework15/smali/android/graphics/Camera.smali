.class public Landroid/graphics/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# instance fields
.field private blacklist native_instance:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/graphics/Camera;->nativeConstructor()V

    return-void
.end method

.method private native greylist-max-o nativeApplyToCanvas(J)V
.end method

.method private native greylist-max-o nativeConstructor()V
.end method

.method private native greylist-max-o nativeDestructor()V
.end method

.method private native greylist-max-o nativeGetMatrix(J)V
.end method


# virtual methods
.method public whitelist applyToCanvas(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getNativeCanvasWrapper()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeApplyToCanvas(J)V

    return-void
.end method

.method public native whitelist dotWithNormal(FFF)F
.end method

.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Landroid/graphics/Camera;->nativeDestructor()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Camera;->native_instance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native whitelist getLocationX()F
.end method

.method public native whitelist getLocationY()F
.end method

.method public native whitelist getLocationZ()F
.end method

.method public whitelist getMatrix(Landroid/graphics/Matrix;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/graphics/Camera;->nativeGetMatrix(J)V

    return-void
.end method

.method public native whitelist restore()V
.end method

.method public native whitelist rotate(FFF)V
.end method

.method public native whitelist rotateX(F)V
.end method

.method public native whitelist rotateY(F)V
.end method

.method public native whitelist rotateZ(F)V
.end method

.method public native whitelist save()V
.end method

.method public native whitelist setLocation(FFF)V
.end method

.method public native whitelist translate(FFF)V
.end method
