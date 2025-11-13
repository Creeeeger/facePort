.class final Lcom/samsung/android/allshare/VideoItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "VideoItemImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/VideoItemImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mItemImpl:Lcom/samsung/android/allshare/ItemImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 189
    new-instance v0, Lcom/samsung/android/allshare/VideoItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/VideoItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/VideoItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 43
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 45
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 182
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 183
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 184
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/VideoItemImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/VideoItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 147
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 148
    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/allshare/VideoItemImpl;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 150
    return v2

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/allshare/VideoItemImpl;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    .line 206
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getBitrate()I
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 283
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 284
    const/4 v1, -0x1

    return v1

    .line 286
    :cond_0
    const-string v1, "BUNDLE_STRING_VIDEO_ITEM_BITRATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

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

    .line 302
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getCaptionList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getChannelNr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    .line 211
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 1

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_VIDEO_ITEM_RESOLUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public whitelist getResourceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 267
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 268
    sget-object v1, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v1

    .line 270
    :cond_0
    const-string v1, "BUNDLE_STRING_VIDEO_ITEM_SEEKMODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "seekModeStr":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 272
    sget-object v2, Lcom/samsung/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/samsung/android/allshare/Item$SeekMode;

    return-object v2

    .line 274
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/allshare/Item$SeekMode;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v2

    .line 276
    .local v2, "seekMode":Lcom/samsung/android/allshare/Item$SeekMode;
    return-object v2
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 245
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    .line 248
    :cond_0
    nop

    .line 249
    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 250
    .local v1, "subtitleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 252
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Subtitle;>;"
    if-nez v1, :cond_1

    .line 253
    return-object v2

    .line 255
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 256
    .local v4, "parcel":Landroid/os/Parcelable;
    new-instance v5, Lcom/samsung/android/allshare/SubtitleImpl;

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    invoke-direct {v5, v6}, Lcom/samsung/android/allshare/SubtitleImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .end local v4    # "parcel":Landroid/os/Parcelable;
    goto :goto_0

    .line 259
    :cond_2
    return-object v2
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_PARCELABLE_VIDEO_ITEM_THUMBNAIL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1

    .line 122
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/samsung/android/allshare/VideoItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "objID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/allshare/VideoItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method
