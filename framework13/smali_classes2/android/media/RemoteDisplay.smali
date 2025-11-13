.class public final Landroid/media/RemoteDisplay;
.super Ljava/lang/Object;
.source "RemoteDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteDisplay$NativeListener;,
        Landroid/media/RemoteDisplay$Listener;
    }
.end annotation


# static fields
.field public static final greylist-max-o DISPLAY_ERROR_CONNECTION_DROPPED:I = 0x2

.field public static final greylist-max-o DISPLAY_ERROR_UNKOWN:I = 0x1

.field public static final blacklist DISPLAY_FLAG_AUDIO_ONLY:I = 0x10

.field public static final blacklist DISPLAY_FLAG_DMR_SUPPORT:I = 0x40

.field public static final blacklist DISPLAY_FLAG_HIGH_RESOLUTION_SUPPORT:I = 0x20

.field public static final blacklist DISPLAY_FLAG_LANDSCAPE:I = 0x2

.field public static final blacklist DISPLAY_FLAG_PORTRAIT_270:I = 0x8

.field public static final blacklist DISPLAY_FLAG_PORTRAIT_90:I = 0x4

.field public static final greylist-max-o DISPLAY_FLAG_SECURE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "RemoteDisplay_Java"


# instance fields
.field private final greylist-max-o mGuard:Ldalvik/system/CloseGuard;

.field private final greylist-max-o mHandler:Landroid/os/Handler;

.field private final greylist-max-o mListener:Landroid/media/RemoteDisplay$Listener;

.field private final blacklist mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

.field private final greylist-max-o mOpPackageName:Ljava/lang/String;

.field private greylist-max-o mPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$Listener;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativeListener(Landroid/media/RemoteDisplay;)Landroid/media/RemoteDisplay$NativeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/RemoteDisplay;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 68
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 69
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p3, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    .line 72
    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "nativeListener"    # Landroid/media/RemoteDisplay$NativeListener;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    .line 75
    iput-object p1, p0, Landroid/media/RemoteDisplay;->mListener:Landroid/media/RemoteDisplay$Listener;

    .line 76
    iput-object p2, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p3, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Landroid/media/RemoteDisplay;->mNativeListener:Landroid/media/RemoteDisplay$NativeListener;

    .line 79
    return-void
.end method

.method private blacklist cbFromNativeWFD(ILjava/lang/String;)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "data"    # Ljava/lang/String;

    .line 255
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/media/RemoteDisplay$5;-><init>(Landroid/media/RemoteDisplay;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method private greylist-max-o dispose(Z)V
    .locals 4
    .param p1, "finalized"    # Z

    .line 174
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_1

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 183
    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeDispose(J)V

    .line 184
    iput-wide v2, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 186
    :cond_2
    return-void
.end method

.method public static greylist-max-o listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)Landroid/media/RemoteDisplay;
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;

    .line 99
    if-eqz p0, :cond_2

    .line 102
    if-eqz p1, :cond_1

    .line 105
    if-eqz p2, :cond_0

    .line 109
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;)V

    .line 110
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;)V

    .line 111
    return-object v0

    .line 106
    .end local v0    # "display":Landroid/media/RemoteDisplay;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist listen(Ljava/lang/String;Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)Landroid/media/RemoteDisplay;
    .locals 2
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "listener"    # Landroid/media/RemoteDisplay$Listener;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "setparamInfo"    # Ljava/lang/String;
    .param p5, "nativeListener"    # Landroid/media/RemoteDisplay$NativeListener;

    .line 123
    if-eqz p0, :cond_2

    .line 126
    if-eqz p1, :cond_1

    .line 129
    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Landroid/media/RemoteDisplay;

    invoke-direct {v0, p1, p2, p3, p5}, Landroid/media/RemoteDisplay;-><init>(Landroid/media/RemoteDisplay$Listener;Landroid/os/Handler;Ljava/lang/String;Landroid/media/RemoteDisplay$NativeListener;)V

    .line 134
    .local v0, "display":Landroid/media/RemoteDisplay;
    invoke-direct {v0, p0, p4}, Landroid/media/RemoteDisplay;->startListening(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-object v0

    .line 130
    .end local v0    # "display":Landroid/media/RemoteDisplay;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "handler must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "iface must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private native greylist-max-o nativeDispose(J)V
.end method

.method private native greylist-max-o nativeListen(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native blacklist nativeListen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native greylist-max-o nativePause(J)V
.end method

.method private native greylist-max-o nativeResume(J)V
.end method

.method private static native blacklist nativeSetParam(Ljava/lang/String;)I
.end method

.method private greylist-max-r notifyDisplayChanged(Landroid/view/Surface;III)V
    .locals 8
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I

    .line 245
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v7, Landroid/media/RemoteDisplay$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/media/RemoteDisplay$4;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;III)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void
.end method

.method private greylist-max-r notifyDisplayConnected(Landroid/view/Surface;IIIILjava/lang/String;)V
    .locals 11
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "flags"    # I
    .param p5, "session"    # I
    .param p6, "msg"    # Ljava/lang/String;

    .line 210
    move-object v8, p0

    iget-object v9, v8, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v10, Landroid/media/RemoteDisplay$1;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/RemoteDisplay$1;-><init>(Landroid/media/RemoteDisplay;Landroid/view/Surface;IIIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method

.method private greylist-max-r notifyDisplayDisconnected()V
    .locals 2

    .line 221
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$2;

    invoke-direct {v1, p0}, Landroid/media/RemoteDisplay$2;-><init>(Landroid/media/RemoteDisplay;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    return-void
.end method

.method private greylist-max-r notifyDisplayError(I)V
    .locals 2
    .param p1, "error"    # I

    .line 232
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/RemoteDisplay$3;

    invoke-direct {v1, p0, p1}, Landroid/media/RemoteDisplay$3;-><init>(Landroid/media/RemoteDisplay;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method private greylist-max-o startListening(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 189
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 190
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 195
    return-void

    .line 191
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist startListening(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "initParam"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Landroid/media/RemoteDisplay;->nativeListen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    .line 199
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Landroid/media/RemoteDisplay;->mGuard:Ldalvik/system/CloseGuard;

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 204
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start listening for remote display connection on \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist dispose()V
    .locals 1

    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V

    .line 144
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 84
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/RemoteDisplay;->dispose(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 87
    throw v0
.end method

.method public greylist-max-o pause()V
    .locals 2

    .line 147
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativePause(J)V

    .line 148
    return-void
.end method

.method public greylist-max-o resume()V
    .locals 2

    .line 151
    iget-wide v0, p0, Landroid/media/RemoteDisplay;->mPtr:J

    invoke-direct {p0, v0, v1}, Landroid/media/RemoteDisplay;->nativeResume(J)V

    .line 152
    return-void
.end method

.method public blacklist setParam(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .line 156
    const-string v0, "RemoteDisplay_Java"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 159
    .local v1, "mParam":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/RemoteDisplay;->nativeSetParam(Ljava/lang/String;)I

    move-result v2

    .line 165
    .local v2, "iRet":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setParam >> ret is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 168
    const/4 v0, 0x0

    .line 170
    .end local v1    # "mParam":Lorg/json/JSONObject;
    .local v0, "mParam":Lorg/json/JSONObject;
    return v2
.end method
