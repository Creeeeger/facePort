.class public Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;
.super Lcom/samsung/android/allshare/Item;
.source "SimpleFolderItem.java"

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

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    .line 36
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    .line 37
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 2

    .line 95
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBitrate()I
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

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

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 48
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 143
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

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

    .line 192
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    .line 119
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

    .line 174
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

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

    .line 59
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    .line 64
    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isRootFolder()Z
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 77
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
