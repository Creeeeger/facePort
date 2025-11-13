.class public Lcom/samsung/android/media/codec/SemVideoTranscodingService;
.super Ljava/lang/Object;
.source "SemVideoTranscodingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;,
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;,
        Lcom/samsung/android/media/codec/SemVideoTranscodingService$PlaybackSpeedChange;
    }
.end annotation


# static fields
.field public static final blacklist KEY_INPUT_PATH:Ljava/lang/String; = "input-path"

.field public static final blacklist KEY_OUTPUT_PATH:Ljava/lang/String; = "output-path"

.field public static final blacklist KEY_PLAYBACK_SPEED_CHANGES:Ljava/lang/String; = "playback-speed-changes"

.field private static final blacklist TAG:Ljava/lang/String; = "SemVideoTranscodingService"

.field public static final blacklist TRANSCODING_MODE_BOOMERANG:I = 0xca

.field public static final whitelist TRANSCODING_MODE_HDR_TO_SDR:I = 0x0

.field public static final blacklist TRANSCODING_MODE_HLG_TO_SDR:I = 0x2

.field public static final blacklist TRANSCODING_MODE_INSTANT_SLOW_MOTION:I = 0xc8

.field public static final blacklist TRANSCODING_MODE_INSTANT_SLOW_MOTION_WITH_HDR2SDR:I = 0xc9

.field public static final blacklist TRANSCODING_MODE_P3_TO_SRGB:I = 0x64

.field public static final whitelist TRANSCODING_MODE_SLOW_MOTION_TO_NORMAL:I = 0x1


# instance fields
.field private blacklist mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SemVideoTranscodingService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/media/codec/IVideoTranscodingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    return-void
.end method


# virtual methods
.method public whitelist createClient(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") out("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemVideoTranscodingService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "input-path"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "output-path"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1, v0, p4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->createClient(ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    move-result-object v1

    return-object v1
.end method

.method public blacklist createClient(ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemVideoTranscodingService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "IVideoTranscodingService is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    invoke-interface {v4, p1, p3}, Lcom/samsung/android/media/codec/IVideoTranscodingService;->register(ILcom/samsung/android/media/codec/IVideoTranscodingServiceCallback;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    if-nez v0, :cond_1

    const-string v1, "id is null"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :cond_1
    nop

    new-instance v4, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;

    iget-object v6, p0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;->mService:Lcom/samsung/android/media/codec/IVideoTranscodingService;

    move-object v5, v4

    move-object v7, v0

    move v8, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;-><init>(Lcom/samsung/android/media/codec/IVideoTranscodingService;Ljava/lang/String;ILjava/util/Map;Lcom/samsung/android/media/codec/SemVideoTranscodingService$ProgressCallback;)V

    invoke-virtual {v4}, Lcom/samsung/android/media/codec/SemVideoTranscodingService$Client;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "Exception createClient()"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method
