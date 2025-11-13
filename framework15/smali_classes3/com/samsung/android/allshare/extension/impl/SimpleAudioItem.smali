.class public Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;
.super Lcom/samsung/android/allshare/Item;
.source "SimpleAudioItem.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# instance fields
.field private blacklist mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBitrate()I
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getCaptionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Caption;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDuration()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist isRootFolder()Z
    .locals 2

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
