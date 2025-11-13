.class final Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;
.super Ljava/lang/Object;
.source "ColorScheme.java"

# interfaces
.implements Lcom/samsung/android/wallpaper/colortheme/monet/Chroma;


# instance fields
.field private final blacklist chroma:D


# direct methods
.method public constructor blacklist <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    return-wide v0
.end method

.method public final blacklist getChroma()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/wallpaper/colortheme/monet/ChromaConstant;->chroma:D

    return-wide v0
.end method
