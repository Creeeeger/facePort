.class public Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
.super Ljava/lang/Object;
.source "ScreenCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/ScreenCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotHardwareBuffer"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mContainsHdrLayers:Z

.field private final blacklist mContainsSecureLayers:Z

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p2, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-boolean p3, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    iput-boolean p4, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return-void
.end method

.method private static blacklist createFromNative(Landroid/hardware/HardwareBuffer;IZZ)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 3

    invoke-static {p1}, Landroid/graphics/ColorSpace;->getFromDataSpace(I)Landroid/graphics/ColorSpace;

    move-result-object v0

    new-instance v1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    if-eqz v0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    :goto_0
    invoke-direct {v1, p0, v2, p2, p3}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;-><init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;ZZ)V

    return-object v1
.end method


# virtual methods
.method public blacklist asBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    if-nez v0, :cond_0

    const-string v0, "ScreenCapture"

    const-string v1, "Failed to take screenshot. Null screenshot object"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iget-object v1, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist containsHdrLayers()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsHdrLayers:Z

    return v0
.end method

.method public blacklist containsSecureLayers()Z
    .locals 1

    iget-boolean v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mContainsSecureLayers:Z

    return v0
.end method

.method public blacklist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public blacklist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method
