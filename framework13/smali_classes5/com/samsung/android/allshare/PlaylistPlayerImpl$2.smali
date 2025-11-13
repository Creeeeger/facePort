.class Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "PlaylistPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/PlaylistPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/PlaylistPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 170
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 11
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 174
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "actionID":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 176
    .local v1, "resBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_14

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 180
    :cond_0
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 181
    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    .line 182
    const-string v5, "BUNDLE_STRING_SERVER_URI_LIST"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v3}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v3

    if-nez v3, :cond_2

    .line 186
    return-void

    .line 188
    :cond_2
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 190
    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_c

    .line 191
    nop

    .line 192
    const-string v2, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 193
    .local v2, "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const-string v4, "BUNDLE_STRING_MIME_TYPE"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "mimeType":Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 195
    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const-string v7, "BUNDLE_INT_PLAYLIST_TRACKNUMBER"

    if-eqz v5, :cond_5

    .line 196
    new-instance v5, Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;

    invoke-direct {v5}, Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;-><init>()V

    .line 197
    .local v5, "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;
    const/4 v8, 0x0

    .line 198
    .local v8, "item":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 199
    .local v10, "itemBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_3

    .line 200
    invoke-static {v10}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v8

    .line 202
    if-eqz v8, :cond_3

    .line 203
    invoke-virtual {v5, v8}, Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;->addItem(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;

    .line 205
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_3
    goto :goto_0

    .line 207
    :cond_4
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 209
    .local v6, "trackNum":I
    iget-object v7, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v7

    .line 210
    invoke-virtual {v5}, Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;->build()Lcom/samsung/android/allshare/media/Playlist;

    move-result-object v9

    .line 209
    invoke-interface {v7, v9, v6, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .line 211
    .end local v5    # "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$AudioListBuilder;
    .end local v6    # "trackNum":I
    .end local v8    # "item":Lcom/samsung/android/allshare/Item;
    goto/16 :goto_3

    :cond_5
    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 212
    new-instance v5, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;

    invoke-direct {v5}, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;-><init>()V

    .line 213
    .local v5, "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;
    const/4 v8, 0x0

    .line 214
    .restart local v8    # "item":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 215
    .restart local v10    # "itemBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_6

    .line 216
    invoke-static {v10}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v8

    .line 218
    if-eqz v8, :cond_6

    .line 219
    invoke-virtual {v5, v8}, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->addItem(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;

    .line 221
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_6
    goto :goto_1

    .line 223
    :cond_7
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 225
    .restart local v6    # "trackNum":I
    iget-object v7, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v7

    .line 226
    invoke-virtual {v5}, Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;->build()Lcom/samsung/android/allshare/media/Playlist;

    move-result-object v9

    .line 225
    invoke-interface {v7, v9, v6, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    .end local v5    # "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$VideoListBuilder;
    .end local v6    # "trackNum":I
    .end local v8    # "item":Lcom/samsung/android/allshare/Item;
    goto :goto_3

    .line 227
    :cond_8
    const-string v5, "image"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 228
    new-instance v5, Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;

    invoke-direct {v5}, Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;-><init>()V

    .line 229
    .local v5, "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;
    const/4 v8, 0x0

    .line 230
    .restart local v8    # "item":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 231
    .restart local v10    # "itemBundle":Landroid/os/Bundle;
    if-eqz v10, :cond_9

    .line 232
    invoke-static {v10}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v8

    .line 234
    if-eqz v8, :cond_9

    .line 235
    invoke-virtual {v5, v8}, Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;->addItem(Lcom/samsung/android/allshare/Item;)Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;

    .line 237
    .end local v10    # "itemBundle":Landroid/os/Bundle;
    :cond_9
    goto :goto_2

    .line 239
    :cond_a
    invoke-virtual {v1, v7, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 241
    .restart local v6    # "trackNum":I
    iget-object v7, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v7

    .line 242
    invoke-virtual {v5}, Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;->build()Lcom/samsung/android/allshare/media/Playlist;

    move-result-object v9

    .line 241
    invoke-interface {v7, v9, v6, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/media/Playlist;ILcom/samsung/android/allshare/ERROR;)V

    nop

    .line 245
    .end local v2    # "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "playlistBuilder":Lcom/samsung/android/allshare/media/Playlist$ImageListBuilder;
    .end local v6    # "trackNum":I
    .end local v8    # "item":Lcom/samsung/android/allshare/Item;
    :cond_b
    :goto_3
    goto/16 :goto_4

    :cond_c
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_SEEK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "BUNDLE_INT_TRACKNUM"

    if-ne v2, v4, :cond_d

    .line 246
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 247
    .local v2, "trackNum":I
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onSeekResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 248
    .end local v2    # "trackNum":I
    goto/16 :goto_4

    :cond_d
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_NEXT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_e

    .line 249
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onNextResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_4

    .line 250
    :cond_e
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PERVIOUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_f

    .line 251
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPreviousResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_4

    .line 252
    :cond_f
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_STOP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_10

    .line 253
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_4

    .line 254
    :cond_10
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_PAUSE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_11

    .line 255
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_4

    .line 256
    :cond_11
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_RESUME"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_12

    .line 257
    iget-object v2, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v2}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_4

    .line 258
    :cond_12
    const-string v2, "com.sec.android.allshare.action.ACTION_PLAYLIST_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v4, :cond_13

    .line 259
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 260
    .restart local v2    # "trackNum":I
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerResponseListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 262
    .end local v2    # "trackNum":I
    :cond_13
    :goto_4
    return-void

    .line 177
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :cond_14
    :goto_5
    return-void
.end method
