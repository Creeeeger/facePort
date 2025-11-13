.class public Landroid/window/ScreenCapture$DisplayCaptureArgs;
.super Landroid/window/ScreenCapture$CaptureArgs;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayToken:Landroid/os/IBinder;

.field private final blacklist mHeight:I

.field private final blacklist mNativeLayer:J

.field private final blacklist mUseIdentityTransform:Z

.field private final blacklist mWidth:I


# direct methods
.method private constructor blacklist <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/ScreenCapture$CaptureArgs;-><init>(Landroid/window/ScreenCapture$CaptureArgs$Builder;Landroid/window/ScreenCapture$CaptureArgs-IA;)V

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmDisplayToken(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmWidth(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mWidth:I

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmHeight(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mHeight:I

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmUseIdentityTransform(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mUseIdentityTransform:Z

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mNativeLayer:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/window/ScreenCapture$DisplayCaptureArgs;->mNativeLayer:J

    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;Landroid/window/ScreenCapture$DisplayCaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/ScreenCapture$DisplayCaptureArgs;-><init>(Landroid/window/ScreenCapture$DisplayCaptureArgs$Builder;)V

    return-void
.end method
