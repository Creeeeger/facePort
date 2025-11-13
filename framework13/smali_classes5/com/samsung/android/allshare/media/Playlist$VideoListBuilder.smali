.class public Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;
.super Ljava/lang/Object;
.source "Playlist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/Playlist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoListBuilder"
.end annotation


# instance fields
.field private blacklist mPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPlaylist(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;

    .line 155
    return-void
.end method


# virtual methods
.method public blacklist addItem(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/allshare/Item;

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/samsung/android/allshare/Item$MediaType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_0
    return-object p0
.end method

.method public blacklist build()Lcom/samsung/android/allshare/media/Playlist;
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->mPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    return-object v1

    .line 182
    :cond_0
    new-instance v0, Lcom/samsung/android/allshare/media/Playlist;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/allshare/media/Playlist;-><init>(Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;Lcom/samsung/android/allshare/media/Playlist-IA;)V

    return-object v0
.end method
