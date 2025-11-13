.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaMaxOut;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2
    .param p1, "sourceColor"    # Lcom/android/internal/graphics/cam/Cam;

    .line 171
    const-wide v0, 0x4060400000000000L    # 130.0

    return-wide v0
.end method
