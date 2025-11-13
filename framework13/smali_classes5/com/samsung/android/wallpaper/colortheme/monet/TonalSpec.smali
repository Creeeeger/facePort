.class final Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;
.super Ljava/lang/Object;
.source "ColorScheme.java"


# instance fields
.field private final blacklist chroma:Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;

.field private final blacklist hue:Lcom/samsung/android/wallpaper/colortheme/monet/Hue;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/wallpaper/colortheme/monet/Hue;Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;)V
    .locals 0
    .param p1, "hue"    # Lcom/samsung/android/wallpaper/colortheme/monet/Hue;
    .param p2, "chroma"    # Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->hue:Lcom/samsung/android/wallpaper/colortheme/monet/Hue;

    .line 234
    iput-object p2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->chroma:Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;

    .line 235
    return-void
.end method


# virtual methods
.method public blacklist getChroma()Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->chroma:Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;

    return-object v0
.end method

.method public blacklist getHue()Lcom/samsung/android/wallpaper/colortheme/monet/Hue;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->hue:Lcom/samsung/android/wallpaper/colortheme/monet/Hue;

    return-object v0
.end method

.method public final blacklist shades(Lcom/android/internal/graphics/cam/Cam;)Ljava/util/List;
    .locals 7
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 218
    iget-object v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->hue:Lcom/samsung/android/wallpaper/colortheme/monet/Hue;

    invoke-interface {v0, p1}, Lcom/samsung/android/wallpaper/colortheme/monet/Hue;->get(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v0

    .line 219
    .local v0, "hue":D
    iget-object v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/TonalSpec;->chroma:Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;

    invoke-interface {v2, p1}, Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;->get(Lcom/android/internal/graphics/cam/Cam;)D

    move-result-wide v2

    .line 220
    .local v2, "chroma":D
    double-to-float v4, v0

    double-to-float v5, v2

    invoke-static {v4, v5}, Lcom/samsung/android/wallpaper/colortheme/monet/Shades;->of(FF)[I

    move-result-object v4

    .line 221
    .local v4, "shades":[I
    invoke-static {v4}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    return-object v5
.end method
