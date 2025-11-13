.class public Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;
.super Landroid/graphics/ImageDecoder$Source;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssetInputStreamQMGSource"
.end annotation


# instance fields
.field private blacklist mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final blacklist mDensity:I

.field private final blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/AssetManager$AssetInputStream;Landroid/content/res/Resources;Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "ais"    # Landroid/content/res/AssetManager$AssetInputStream;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "value"    # Landroid/util/TypedValue;

    .line 523
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/ImageDecoder$Source;-><init>(Landroid/graphics/ImageDecoder$Source-IA;)V

    .line 524
    iput-object p1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 525
    iput-object p2, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mResources:Landroid/content/res/Resources;

    .line 527
    iget v0, p3, Landroid/util/TypedValue;->density:I

    if-nez v0, :cond_0

    .line 528
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mDensity:I

    goto :goto_0

    .line 529
    :cond_0
    iget v0, p3, Landroid/util/TypedValue;->density:I

    const v1, 0xffff

    if-eq v0, v1, :cond_1

    .line 530
    iget v0, p3, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mDensity:I

    goto :goto_0

    .line 532
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mDensity:I

    .line 534
    :goto_0
    return-void
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

    .line 550
    monitor-enter p0

    .line 551
    :try_start_0
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v0, :cond_0

    .line 554
    nop

    .line 555
    .local v0, "ais":Landroid/content/res/AssetManager$AssetInputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 556
    invoke-static {v0, p1, p0}, Landroid/graphics/ImageDecoder;->-$$Nest$smcreateFromAssetQMG(Landroid/content/res/AssetManager$AssetInputStream;ZLandroid/graphics/ImageDecoder$Source;)Landroid/graphics/ImageDecoder;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 552
    .end local v0    # "ais":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot reuse AssetInputStreamSource"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;
    .end local p1    # "preferAnimation":Z
    throw v0

    .line 557
    .restart local p0    # "this":Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;
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

    .line 545
    iget v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mDensity:I

    return v0
.end method

.method public blacklist getResources()Landroid/content/res/Resources;
    .locals 1

    .line 541
    iget-object v0, p0, Landroid/graphics/ImageDecoder$AssetInputStreamQMGSource;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method
