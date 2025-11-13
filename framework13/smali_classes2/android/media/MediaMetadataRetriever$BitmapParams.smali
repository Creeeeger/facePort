.class public final Landroid/media/MediaMetadataRetriever$BitmapParams;
.super Ljava/lang/Object;
.source "MediaMetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaMetadataRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitmapParams"
.end annotation


# instance fields
.field private greylist-max-o inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field private greylist-max-o outActualConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 784
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->outActualConfig:Landroid/graphics/Bitmap$Config;

    .line 790
    return-void
.end method


# virtual methods
.method public whitelist getActualConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 824
    iget-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->outActualConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public whitelist getPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 815
    iget-object v0, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public whitelist setPreferredConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .line 803
    if-eqz p1, :cond_0

    .line 806
    iput-object p1, p0, Landroid/media/MediaMetadataRetriever$BitmapParams;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 807
    return-void

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preferred config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
