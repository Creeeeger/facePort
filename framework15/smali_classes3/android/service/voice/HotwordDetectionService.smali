.class public abstract Landroid/service/voice/HotwordDetectionService;
.super Landroid/app/Service;
.source "HotwordDetectionService.java"

# interfaces
.implements Landroid/service/voice/SandboxedDetectionInitializer;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectionService$Callback;,
        Landroid/service/voice/HotwordDetectionService$AudioSource;
    }
.end annotation


# static fields
.field public static final blacklist AUDIO_SOURCE_EXTERNAL:I = 0x2

.field public static final blacklist AUDIO_SOURCE_MICROPHONE:I = 0x1

.field private static final blacklist DBG:Z = false

.field public static final blacklist ENABLE_PROXIMITY_RESULT:Z = true

.field public static final whitelist INITIALIZATION_STATUS_SUCCESS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist INITIALIZATION_STATUS_UNKNOWN:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist KEY_SYSTEM_WILL_CLOSE_AUDIO_STREAM_AFTER_CALLBACK:Ljava/lang/String; = "android.service.voice.HotwordDetectionService.KEY_SYSTEM_WILL_CLOSE_AUDIO_STREAM_AFTER_CALLBACK"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.HotwordDetectionService"

.field private static final blacklist TAG:Ljava/lang/String; = "HotwordDetectionService"

.field private static final blacklist UPDATE_TIMEOUT_MILLIS:J = 0x4e20L


# instance fields
.field private blacklist mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

.field private blacklist mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

.field private final blacklist mInterface:Landroid/service/voice/ISandboxedDetectionService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmContentCaptureManager(Landroid/service/voice/HotwordDetectionService;Landroid/view/contentcapture/ContentCaptureManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIRecognitionServiceManager(Landroid/service/voice/HotwordDetectionService;Landroid/speech/IRecognitionServiceManager;)V
    .locals 0

    iput-object p1, p0, Landroid/service/voice/HotwordDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUpdateStateInternal(Landroid/service/voice/HotwordDetectionService;Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/service/voice/HotwordDetectionService;->onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/voice/HotwordDetectionService$1;

    invoke-direct {v0, p0}, Landroid/service/voice/HotwordDetectionService$1;-><init>(Landroid/service/voice/HotwordDetectionService;)V

    iput-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    return-void
.end method

.method public static whitelist getMaxCustomInitializationStatus()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    return v0
.end method

.method private blacklist onUpdateStateInternal(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 7

    nop

    invoke-static {p3}, Landroid/service/voice/SandboxedDetectionInitializer;->createInitializationStatusConsumer(Landroid/os/IRemoteCallback;)Ljava/util/function/IntConsumer;

    move-result-object v6

    const-wide/16 v3, 0x4e20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/HotwordDetectionService;->onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V

    return-void
.end method


# virtual methods
.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "content_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mContentCaptureManager:Landroid/view/contentcapture/ContentCaptureManager;

    return-object v0

    :cond_0
    const-string/jumbo v0, "speech_recognition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mIRecognitionServiceManager:Landroid/speech/IRecognitionServiceManager;

    invoke-interface {v0}, Landroid/speech/IRecognitionServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.voice.HotwordDetectionService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionService;->mInterface:Landroid/service/voice/ISandboxedDetectionService;

    invoke-interface {v0}, Landroid/service/voice/ISandboxedDetectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to bind to wrong intent (should be android.service.voice.HotwordDetectionService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HotwordDetectionService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onDetect(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onDetect(Landroid/service/voice/AlwaysOnHotwordDetector$EventPayload;JLandroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onDetect(Landroid/service/voice/HotwordDetectionService$Callback;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist onStopDetection()V
    .locals 0

    return-void
.end method

.method public whitelist onUpdateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;JLjava/util/function/IntConsumer;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method
