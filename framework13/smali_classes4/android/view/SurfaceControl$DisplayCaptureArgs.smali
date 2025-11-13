.class public Landroid/view/SurfaceControl$DisplayCaptureArgs;
.super Landroid/view/SurfaceControl$CaptureArgs;
.source "SurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCaptureArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mDisplayToken:Landroid/os/IBinder;

.field private final blacklist mHeight:I

.field private final blacklist mNativeLayer:J

.field private final blacklist mUseIdentityTransform:Z

.field private final blacklist mWidth:I


# direct methods
.method private constructor blacklist <init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;

    .line 1082
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceControl$CaptureArgs;-><init>(Landroid/view/SurfaceControl$CaptureArgs$Builder;Landroid/view/SurfaceControl$CaptureArgs-IA;)V

    .line 1083
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmDisplayToken(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mDisplayToken:Landroid/os/IBinder;

    .line 1084
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmWidth(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mWidth:I

    .line 1085
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmHeight(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)I

    move-result v0

    iput v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mHeight:I

    .line 1086
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmUseIdentityTransform(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mUseIdentityTransform:Z

    .line 1088
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1089
    invoke-static {p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;->-$$Nest$fgetmLayer(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)Landroid/view/SurfaceControl;

    move-result-object v0

    iget-wide v0, v0, Landroid/view/SurfaceControl;->mNativeObject:J

    iput-wide v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mNativeLayer:J

    goto :goto_0

    .line 1091
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceControl$DisplayCaptureArgs;->mNativeLayer:J

    .line 1094
    :goto_0
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;Landroid/view/SurfaceControl$DisplayCaptureArgs-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceControl$DisplayCaptureArgs;-><init>(Landroid/view/SurfaceControl$DisplayCaptureArgs$Builder;)V

    return-void
.end method
