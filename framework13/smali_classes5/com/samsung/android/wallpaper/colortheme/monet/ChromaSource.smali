.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaSource;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
