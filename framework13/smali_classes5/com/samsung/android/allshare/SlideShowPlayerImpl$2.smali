.class Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "SlideShowPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/SlideShowPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/SlideShowPlayerImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/SlideShowPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 144
    iput-object p1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    .line 148
    sget-object v1, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->BUFFERING:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_BUFFERING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_NOMEDIA"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PAUSED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->STOPPED:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_STOPPED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    sget-object v1, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->PLAYING:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    const-string v2, "com.sec.android.allshare.event.EVENT_RENDERER_STATE_PLAYING"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private blacklist notifyEvent(Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;ILcom/samsung/android/allshare/ERROR;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;
    .param p2, "trackNumber"    # I
    .param p3, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 178
    const-string v0, "SlideShowPlayerImpl"

    iget-object v1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v1}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/SlideShowPlayerImpl;

    invoke-static {v1}, Lcom/samsung/android/allshare/SlideShowPlayerImpl;->-$$Nest$fgetmEventListener(Lcom/samsung/android/allshare/SlideShowPlayerImpl;)Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/allshare/media/SlideShowPlayer$ISlideShowPlayerEventListener;->onSlideShowPlayerStateChanged(Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;ILcom/samsung/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "err":Ljava/lang/Error;
    const-string v2, "mEventHandler.notifyEvent Error"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    .line 181
    .end local v1    # "err":Ljava/lang/Error;
    :catch_1
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "mEventHandler.notifyEvent Exception"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 188
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 5
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 159
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 160
    .local v0, "resBundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    sget-object v1, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    .line 164
    .local v1, "error":Lcom/samsung/android/allshare/ERROR;
    iget-object v2, p0, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->mStateMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    .line 165
    .local v2, "state":Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "errorStr":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v1

    .line 169
    if-nez v2, :cond_1

    .line 170
    sget-object v2, Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;->UNKNOWN:Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;

    .line 173
    :cond_1
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4, v1}, Lcom/samsung/android/allshare/SlideShowPlayerImpl$2;->notifyEvent(Lcom/samsung/android/allshare/media/SlideShowPlayer$SlideShowPlayerState;ILcom/samsung/android/allshare/ERROR;)V

    .line 174
    return-void
.end method
