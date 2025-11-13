.class public final Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;
.super Ljava/lang/Object;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/AccessibilityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenshotResult"
.end annotation


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;

.field private final blacklist mHardwareBuffer:Landroid/hardware/HardwareBuffer;

.field private final blacklist mTimestamp:J


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "hardwareBuffer cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "colorSpace cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    iput-object p2, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    iput-wide p3, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-void
.end method


# virtual methods
.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist getHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .locals 1

    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mHardwareBuffer:Landroid/hardware/HardwareBuffer;

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/accessibilityservice/AccessibilityService$ScreenshotResult;->mTimestamp:J

    return-wide v0
.end method
