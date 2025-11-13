.class Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
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
.field private blacklist mPlaylistStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/PlaylistPlayerImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/PlaylistPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 101
    iput-object p1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    .line 104
    sget-object v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->PAUSED:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->STOPPED:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->PLAYING:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_CONTENT_CHANGED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    return-void
.end method

.method private blacklist isContains(Ljava/lang/String;)Z
    .locals 4
    .param p1, "fullUri"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 158
    return v0

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    iget-object v1, v1, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 161
    .local v2, "uri":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const/4 v0, 0x1

    return v0

    .line 163
    .end local v2    # "uri":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 165
    :cond_2
    return v0
.end method

.method private blacklist notifyEvent(Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;
    .param p2, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 146
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerEventListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->-$$Nest$fgetmPlaylistPlayerEventListener(Lcom/samsung/android/allshare/PlaylistPlayerImpl;)Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/allshare/media/PlaylistPlayer$IPlaylistPlayerEventListener;->onPlaylistPlayerStateChanged(Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PlaylistPlayerImpl"

    const-string v2, "mEventHandler.notifyEvent Exception"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 154
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 6
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 115
    const/4 v0, 0x0

    .line 117
    .local v0, "state":Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->mPlaylistStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PlaylistPlayerImpl"

    const-string v3, "mEventHandler.handleEventMessage Exception "

    invoke-static {v2, v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 122
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_0

    .line 123
    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 125
    .local v1, "resBundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 126
    return-void

    .line 127
    :cond_1
    const-string v2, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "errStr":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 130
    sget-object v3, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    goto :goto_1

    .line 132
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :cond_2
    invoke-static {v2}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 134
    .restart local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :goto_1
    sget-object v4, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;

    invoke-virtual {v0, v4}, Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    iget-object v4, v4, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 136
    const-string v4, "BUNDLE_STRING_APP_ITEM_ID"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->isContains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 137
    iget-object v4, p0, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->this$0:Lcom/samsung/android/allshare/PlaylistPlayerImpl;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/samsung/android/allshare/PlaylistPlayerImpl;->mCurrentPlayingContentUriStrList:Ljava/util/ArrayList;

    .line 138
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->notifyEvent(Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_2

    .line 141
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/samsung/android/allshare/PlaylistPlayerImpl$1;->notifyEvent(Lcom/samsung/android/allshare/media/PlaylistPlayer$PlayerState;Lcom/samsung/android/allshare/ERROR;)V

    .line 143
    :cond_4
    :goto_2
    return-void
.end method
