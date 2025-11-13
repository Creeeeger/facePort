.class Landroid/media/MediaRecorder$SemPersistentSurface;
.super Landroid/view/Surface;
.source "MediaRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemPersistentSurface"
.end annotation


# instance fields
.field private blacklist mPersistentObject:J


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/Surface;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "MediaRecorder"

    const-string v1, "SemPersistentSurface::finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/MediaRecorder;->-$$Nest$smnative_releaseSemPersistentSurface(Landroid/view/Surface;)V

    invoke-super {p0}, Landroid/view/Surface;->finalize()V

    return-void
.end method

.method public whitelist release()V
    .locals 2

    const-string v0, "MediaRecorder"

    const-string v1, "SemPersistentSurface::release()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/media/MediaRecorder;->-$$Nest$smnative_releaseSemPersistentSurface(Landroid/view/Surface;)V

    invoke-super {p0}, Landroid/view/Surface;->release()V

    return-void
.end method
