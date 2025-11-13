.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# instance fields
.field private final blacklist multiple:D


# direct methods
.method public constructor blacklist <init>(D)V
    .locals 0
    .param p1, "multiple"    # D

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    .line 188
    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getChroma()F

    move-result v0

    float-to-double v0, v0

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public final blacklist getMultiple()D
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMultiple;->multiple:D

    return-wide v0
.end method
