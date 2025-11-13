.class final Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Hue;


# instance fields
.field private final blacklist amountDegrees:D


# direct methods
.method public constructor blacklist <init>(D)V
    .locals 0
    .param p1, "amountDegrees"    # D

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;->amountDegrees:D

    .line 112
    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;->amountDegrees:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/samsung/android/wallpaper/colortheme/monet/ColorScheme;->wrapDegreesDouble(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public final blacklist getAmountDegrees()D
    .locals 2

    .line 107
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/HueSubtract;->amountDegrees:D

    return-wide v0
.end method
