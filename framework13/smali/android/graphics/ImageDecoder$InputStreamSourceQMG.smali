.class Landroid/graphics/ImageDecoder$InputStreamSourceQMG;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStreamSourceQMG"
.end annotation


# instance fields
.field final blacklist mInputDensity:I

.field blacklist mInputStream:Ljava/io/InputStream;

.field final blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method constructor blacklist <init>(Landroid/content/res/Resources;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "inputDensity"    # I

    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 439
    if-eqz p2, :cond_0

    .line 442
    iput-object p1, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mResources:Landroid/content/res/Resources;

    .line 443
    iput-object p2, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mInputStream:Ljava/io/InputStream;

    .line 444
    iput p3, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mInputDensity:I

    .line 445
    return-void

    .line 440
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist createImageDecoder(Z)Landroid/graphics/ImageDecoder;
    .locals 2
    .param p1, "preferAnimation"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 464
    nop

    .line 465
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mInputStream:Ljava/io/InputStream;

    .line 466
    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromStreamQMG(Ljava/io/InputStream;ZZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 462
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse InputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSourceQMG;
    .end local p1    # "preferAnimation":Z
    throw v0

    .line 467
    .restart local p0    # "this":Landroid/graphics/ImageDecoder$InputStreamSourceQMG;
    .restart local p1    # "preferAnimation":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist getDensity()I
    .locals 1

    .line 455
    iget v0, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mInputDensity:I

    return v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 452
    iget-object v0, p0, Landroid/graphics/ImageDecoder$InputStreamSourceQMG;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
