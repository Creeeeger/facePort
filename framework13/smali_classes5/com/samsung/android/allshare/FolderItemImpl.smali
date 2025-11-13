.class Lcom/samsung/android/allshare/FolderItemImpl;
.super Lcom/samsung/android/allshare/Item;
.source "FolderItemImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/allshare/FolderItemImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mItemImpl:Lcom/samsung/android/allshare/ItemImpl;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Lcom/samsung/android/allshare/FolderItemImpl$1;

    invoke-direct {v0}, Lcom/samsung/android/allshare/FolderItemImpl$1;-><init>()V

    sput-object v0, Lcom/samsung/android/allshare/FolderItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 42
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 43
    new-instance v0, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v0, p1}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 44
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/allshare/Item;-><init>()V

    .line 116
    const-class v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "bundle":Landroid/os/Bundle;
    new-instance v1, Lcom/samsung/android/allshare/ItemImpl;

    invoke-direct {v1, v0}, Lcom/samsung/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/allshare/FolderItemImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/allshare/FolderItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 82
    return v0

    .line 83
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    instance-of v2, p1, Lcom/samsung/android/allshare/FolderItemImpl;

    if-nez v2, :cond_1

    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/allshare/FolderItemImpl;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 84
    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getArtist()Ljava/lang/String;
    .locals 1

    .line 140
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getBitrate()I
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getBitrate()I

    move-result v0

    return v0
.end method

.method public blacklist getBundle()Landroid/os/Bundle;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

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

    .line 234
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getChannelNr()Ljava/lang/String;
    .locals 1

    .line 228
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getContentBuildType()Lcom/samsung/android/allshare/Item$ContentBuildType;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDate()Ljava/util/Date;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 145
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getExtension()Ljava/lang/String;
    .locals 1

    .line 150
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getFileSize()J
    .locals 2

    .line 155
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public whitelist getGenre()Ljava/lang/String;
    .locals 1

    .line 160
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getLocation()Landroid/location/Location;
    .locals 1

    .line 165
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getMimetype()Ljava/lang/String;
    .locals 1

    .line 170
    const-string v0, ""

    return-object v0
.end method

.method public whitelist getResolution()Ljava/lang/String;
    .locals 1

    .line 175
    const-string v0, ""

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

    .line 223
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getSeekMode()Lcom/samsung/android/allshare/Item$SeekMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSubtitle()Landroid/net/Uri;
    .locals 1

    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSubtitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getSubtitleList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getThumbnail()Landroid/net/Uri;
    .locals 1

    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getType()Lcom/samsung/android/allshare/Item$MediaType;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/samsung/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public whitelist getURI()Landroid/net/Uri;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentDeliveryMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getWebContentPlayMode()Lcom/samsung/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/allshare/FolderItemImpl;->mItemImpl:Lcom/samsung/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/ItemImpl;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "objID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public whitelist isRootFolder()Z
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/allshare/FolderItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 109
    return-void
.end method
