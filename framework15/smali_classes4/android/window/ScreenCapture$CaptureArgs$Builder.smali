.class public Landroid/window/ScreenCapture$CaptureArgs$Builder;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture$CaptureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/window/ScreenCapture$CaptureArgs$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private blacklist mAllowProtected:Z

.field private blacklist mCaptureSecureLayers:Z

.field private blacklist mExcludeLayers:[Landroid/view/SurfaceControl;

.field private blacklist mFrameScaleX:F

.field private blacklist mFrameScaleY:F

.field private blacklist mGrayscale:Z

.field private blacklist mHintForSeamlessTransition:Z

.field private blacklist mIsScreenShotBySystem:Z

.field private blacklist mPixelFormat:I

.field private final blacklist mSourceCrop:Landroid/graphics/Rect;

.field private blacklist mUid:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowProtected(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mAllowProtected:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSecureLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExcludeLayers(Landroid/window/ScreenCapture$CaptureArgs$Builder;)[Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleX(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F
    .locals 0

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameScaleY(Landroid/window/ScreenCapture$CaptureArgs$Builder;)F
    .locals 0

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGrayscale(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mGrayscale:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHintForSeamlessTransition(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mHintForSeamlessTransition:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsScreenShotBySystem(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mIsScreenShotBySystem:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPixelFormat(Landroid/window/ScreenCapture$CaptureArgs$Builder;)I
    .locals 0

    iget p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSourceCrop(Landroid/window/ScreenCapture$CaptureArgs$Builder;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUid(Landroid/window/ScreenCapture$CaptureArgs$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    return-wide v0
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    iput v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mIsScreenShotBySystem:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/ScreenCapture$CaptureArgs;
    .locals 2

    new-instance v0, Landroid/window/ScreenCapture$CaptureArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    return-object v0
.end method

.method blacklist getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    return-object p0
.end method

.method public blacklist setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mAllowProtected:Z

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mCaptureSecureLayers:Z

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExcludeLayers([Landroid/view/SurfaceControl;)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/view/SurfaceControl;",
            ")TT;"
        }
    .end annotation

    iput-object p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mExcludeLayers:[Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setFrameScale(FF)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleX:F

    iput p2, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mFrameScaleY:F

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setGrayscale(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mGrayscale:Z

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setHintForSeamlessTransition(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mHintForSeamlessTransition:Z

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setIsScreenShotBySystem(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    iput-boolean p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mIsScreenShotBySystem:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Capture_TEST] : setIsScreenShotBySystem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenCapture"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iput p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mPixelFormat:I

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mSourceCrop:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setUid(J)Landroid/window/ScreenCapture$CaptureArgs$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    iput-wide p1, p0, Landroid/window/ScreenCapture$CaptureArgs$Builder;->mUid:J

    invoke-virtual {p0}, Landroid/window/ScreenCapture$CaptureArgs$Builder;->getThis()Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object v0

    return-object v0
.end method
