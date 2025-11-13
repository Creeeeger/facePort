.class Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;
.super Landroid/service/voice/AbstractDetector;
.source "VisualQueryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VisualQueryDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VisualQueryDetectorInitializationDelegate"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/voice/VisualQueryDetector;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetLock(Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->getLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/service/voice/VisualQueryDetector;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-static {p1}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmManagerService(Landroid/service/voice/VisualQueryDetector;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    invoke-static {p1}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmExecutor(Landroid/service/voice/VisualQueryDetector;)Ljava/util/concurrent/Executor;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Landroid/service/voice/AbstractDetector;-><init>(Lcom/android/internal/app/IVoiceInteractionManagerService;Ljava/util/concurrent/Executor;Landroid/service/voice/HotwordDetector$Callback;)V

    return-void
.end method

.method private blacklist getLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->mLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method blacklist initialize(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;)V
    .locals 6

    new-instance v3, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmExecutor(Landroid/service/voice/VisualQueryDetector;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-static {v1}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmCallback(Landroid/service/voice/VisualQueryDetector;)Landroid/service/voice/VisualQueryDetector$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-static {v2}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmContext(Landroid/service/voice/VisualQueryDetector;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v3, v0, v1, v2}, Landroid/service/voice/VisualQueryDetector$InitializationStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/service/voice/VisualQueryDetector$Callback;Landroid/content/Context;)V

    iget-object v0, p0, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->this$0:Landroid/service/voice/VisualQueryDetector;

    invoke-static {v0}, Landroid/service/voice/VisualQueryDetector;->-$$Nest$fgetmAttributionTag(Landroid/service/voice/VisualQueryDetector;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->initAndVerifyDetector(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Lcom/android/internal/app/IHotwordRecognitionStatusCallback;ILjava/lang/String;)V

    return-void
.end method

.method public blacklist isUsingSandboxedDetectionService()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist startRecognition()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->throwIfDetectorIsNoLongerActive()V

    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist startRecognition(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist stopRecognition()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/voice/VisualQueryDetector$VisualQueryDetectorInitializationDelegate;->throwIfDetectorIsNoLongerActive()V

    const/4 v0, 0x1

    return v0
.end method
