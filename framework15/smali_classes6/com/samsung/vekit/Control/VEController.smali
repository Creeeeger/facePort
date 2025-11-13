.class public Lcom/samsung/vekit/Control/VEController;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;,
        Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;,
        Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;,
        Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;,
        Lcom/samsung/vekit/Control/VEController$ControllerCallbackMsg;
    }
.end annotation


# static fields
.field public static final blacklist UI_ANIMATION_MANAGER:I = -0x1

.field public static final blacklist VERSION:Ljava/lang/String; = "2.0.19"


# instance fields
.field private final blacklist TAG:Ljava/lang/String;

.field private blacklist analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

.field private blacklist animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

.field blacklist animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

.field private blacklist captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

.field blacklist captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

.field private blacklist controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

.field blacklist controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

.field blacklist exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

.field blacklist isAnimating:Z

.field blacklist isPlaying:Z

.field blacklist playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

.field private blacklist portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

.field blacklist renderTime:J

.field blacklist seekTime:J

.field blacklist viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTROLLER:Lcom/samsung/vekit/Common/Type/ElementType;

    const-string v1, "Controller"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3, v1}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "[VEKit] Version : 2.0.19"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v1, p0, v0}, Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;-><init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    new-instance v1, Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1}, Lcom/samsung/vekit/Common/VEContext;-><init>()V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    new-instance v1, Lcom/samsung/vekit/Control/VEAnalyzer;

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-direct {v1, v3, v0}, Lcom/samsung/vekit/Control/VEAnalyzer;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Control/VEController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerStatusListener:Lcom/samsung/vekit/Listener/VEControllerStatusListener;

    iput-object v2, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    new-instance v1, Lcom/samsung/vekit/Control/VEController$1;

    invoke-direct {v1, p0}, Lcom/samsung/vekit/Control/VEController$1;-><init>(Lcom/samsung/vekit/Control/VEController;)V

    iput-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationStatusListener:Lcom/samsung/vekit/Listener/AnimationStatusListener;

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist access$100(Lcom/samsung/vekit/Control/VEController;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vekit/Control/VEController;->handleError(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/samsung/vekit/Control/VEController;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/vekit/Control/VEController;->handleItemError(III)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/samsung/vekit/Control/VEController;ILjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/vekit/Control/VEController;->handleAudioPcmUpdate(ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic blacklist access$400(Lcom/samsung/vekit/Control/VEController;)Lcom/samsung/vekit/Common/VEContext;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    return-object v0
.end method

.method private blacklist handleAudioPcmUpdate(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/vekit/Common/Object/PcmInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/vekit/Item/Item;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v2, "Item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v2, "Data is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/vekit/Item/Item;->getPcmInfoListener()Lcom/samsung/vekit/Listener/PcmInfoListener;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v3, "listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-interface {v1, p2}, Lcom/samsung/vekit/Listener/PcmInfoListener;->onUpdate(Ljava/util/HashMap;)V

    return-void
.end method

.method private blacklist handleError(ILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExecuteError with errorType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extension : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ErrorType;->values()[Lcom/samsung/vekit/Common/Type/ErrorType;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ErrorType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ErrorType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    move-object v2, p2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ErrorType;J)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pause()V

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-wide v2, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onCodecReclaim(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->pauseExport()J

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-wide v2, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    invoke-interface {v1, v2, v3}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onCodecReclaim(J)V

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist handleItemError(III)V
    .locals 6

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ElementType;->values()[Lcom/samsung/vekit/Common/Type/ElementType;

    move-result-object v0

    aget-object v0, v0, p2

    sget-object v1, Lcom/samsung/vekit/Control/VEController$2;->$SwitchMap$com$samsung$vekit$Common$Type$ElementType:[I

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/Type/ElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid elementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported listener error handling ElementType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getItemManager()Lcom/samsung/vekit/Manager/ItemManager;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/samsung/vekit/Manager/ItemManager;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/vekit/Listener/ItemStatusListener;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ItemErrorType;->values()[Lcom/samsung/vekit/Common/Type/ItemErrorType;

    move-result-object v2

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleItemError itemErrorType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elementId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v2}, Lcom/samsung/vekit/Listener/ItemStatusListener;->onError(Lcom/samsung/vekit/Common/Type/ItemErrorType;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist onAnalyzeEvent(IIII)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEAnalyzer;->onEvent(IIII)V

    return-void
.end method

.method private blacklist onAnimationEvent(IIIF)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onAnimationEvent(III[F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->animationEventHandler:Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$AnimationEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIII)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIIJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onControllerEvent(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->controllerEventHandler:Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private blacklist onPortraitVideoEvent(IIILjava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPortraitVideoEvent, status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->portraitVideoEventHandler:Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/vekit/Control/VEController$PortraitVideoEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist animate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->animate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return-void
.end method

.method public blacklist attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->attachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    return-void
.end method

.method public blacklist cancelAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->cancelAnimation()V

    return-void
.end method

.method public blacklist captureAnimatedFrame(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/ImageItem;IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureLatestFrame(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IILcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureSuperHDRFrame(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(IIIILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist captureSuperHDRFrame(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/vekit/Task/CaptureFrameThread;->addRequest(Lcom/samsung/vekit/Item/Item;IILcom/samsung/vekit/Task/CaptureFrameTask$CaptureType;Lcom/samsung/vekit/Listener/CaptureFrameTaskListener;)V

    :cond_0
    return-void
.end method

.method public blacklist clearAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Manager/AnimationManager;->clearAnimations()V

    return-void
.end method

.method public blacklist create()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->createFramework(Lcom/samsung/vekit/Control/VEController;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Manager/AnimationManager;->detachAnimation(Lcom/samsung/vekit/Animation/Animation;)V

    return-void
.end method

.method public blacklist finalizeController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->finalizeFramework()V

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v0}, Lcom/samsung/vekit/Task/CaptureFrameThread;->stopThread()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    :cond_0
    return-void
.end method

.method public blacklist getAnalyzer()Lcom/samsung/vekit/Control/VEAnalyzer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->analyzer:Lcom/samsung/vekit/Control/VEAnalyzer;

    return-object v0
.end method

.method public blacklist getCurrentMediaPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    return-wide v0
.end method

.method public blacklist getExportPosition()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getExportPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public blacklist getState()Lcom/samsung/vekit/Common/State/VEKitState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getState()Lcom/samsung/vekit/Common/State/VEKitState;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVEKitVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "getVEKitVersion version : 2.0.19"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "2.0.19"

    return-object v0
.end method

.method public blacklist initializeController(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 10

    move-object v0, p0

    move-object/from16 v9, p6

    iget-object v1, v0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->initializeFramework(Landroid/view/Surface;IIIILcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    iget-object v1, v0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/VEContext;->initialize()V

    iget-object v1, v0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    move-object/from16 v2, p7

    invoke-virtual {v1, v2}, Lcom/samsung/vekit/Common/VEContext;->setFrameworkType(Lcom/samsung/vekit/Common/Type/FrameworkType;)V

    iput-object v9, v0, Lcom/samsung/vekit/Control/VEController;->viewMode:Lcom/samsung/vekit/Common/Type/ViewMode;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    if-ne v9, v1, :cond_1

    iget-object v1, v0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/vekit/Task/CaptureFrameThread;

    iget-object v3, v0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    iget-object v4, v0, Lcom/samsung/vekit/Control/VEController;->captureEventHandler:Lcom/samsung/vekit/Control/VEController$CaptureEventHandler;

    invoke-direct {v1, v3, v4}, Lcom/samsung/vekit/Task/CaptureFrameThread;-><init>(Lcom/samsung/vekit/Common/VEContext;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    :cond_0
    iget-object v1, v0, Lcom/samsung/vekit/Control/VEController;->captureFrameThread:Lcom/samsung/vekit/Task/CaptureFrameThread;

    invoke-virtual {v1}, Lcom/samsung/vekit/Task/CaptureFrameThread;->startThread()V

    :cond_1
    return-void
.end method

.method public blacklist isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method public blacklist isPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isAnimating:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$com-samsung-vekit-Control-VEController(Lcom/samsung/vekit/Common/Type/EventType;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEvent : EventType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/EventType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    invoke-virtual {p0}, Lcom/samsung/vekit/Control/VEController;->getCurrentMediaPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    return-void
.end method

.method public blacklist pauseExport()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->pauseExport()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    iget-wide v0, p0, Lcom/samsung/vekit/Control/VEController;->renderTime:J

    return-wide v0
.end method

.method public blacklist play()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->calculateTotalDuration()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/samsung/vekit/Layer/LayerGroup;->update()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    iget-object v3, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->play()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->releaseFramework()V

    return-void
.end method

.method public blacklist resumeExport(J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->resumeExport(J)V

    return-void
.end method

.method public blacklist seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)Lcom/samsung/vekit/Control/VEController;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    iput-wide p1, p0, Lcom/samsung/vekit/Control/VEController;->seekTime:J

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->seekTo(JLcom/samsung/vekit/Common/Type/SeekType;)V

    return-object p0
.end method

.method public blacklist setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setExportInfo  width : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/ExportInfo;->getFd()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setExportInfo(Lcom/samsung/vekit/Common/Object/ExportInfo;)V

    return-void
.end method

.method public blacklist setExportstatuslistener(Lcom/samsung/vekit/Listener/ExportStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    return-void
.end method

.method public blacklist setPlayerStatusListener(Lcom/samsung/vekit/Listener/PlayerStatusListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    return-void
.end method

.method public blacklist setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "setPreviewInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->setPreviewInfo(Lcom/samsung/vekit/Common/Object/PreviewInfo;)V

    return-void
.end method

.method public blacklist show()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->TAG:Ljava/lang/String;

    const-string v1, "show : invalid state [playing]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->show()V

    return-void
.end method

.method public blacklist stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->stop()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    return-void
.end method

.method public blacklist update()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/vekit/Common/Object/Element;->update()V

    return-void
.end method

.method public blacklist updateViewport(Lcom/samsung/vekit/Common/Object/Vector4;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/vekit/Common/Object/Vector4<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController;->context:Lcom/samsung/vekit/Common/VEContext;

    invoke-virtual {v0}, Lcom/samsung/vekit/Common/VEContext;->getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getX()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getY()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getZ()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Object/Vector4;->getW()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->updateViewport(IIII)V

    return-void
.end method
