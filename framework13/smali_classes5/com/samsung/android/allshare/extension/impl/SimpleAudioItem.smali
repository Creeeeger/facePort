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
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBitrate()I
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 85
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

    .line 207
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 2

    .line 200
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 2

    .line 109
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 2

    .line 182
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    .line 121
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

    .line 176
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 67
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    .line 66
    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRootFolder()Z
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleAudioItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleAudioItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 80
    return-void
.end method
