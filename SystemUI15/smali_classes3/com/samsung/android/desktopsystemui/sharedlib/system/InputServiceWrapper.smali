.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field private static final MSG_MULTIFINGERGESTURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "[DS]InputServiceWrapper"

.field private static final sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInputManager:Landroid/hardware/input/InputManager;

.field private final mLock:Ljava/lang/Object;

.field private final mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;


# direct methods
.method public static synthetic $r8$lambda$u4H9OpX_Xs1pvwvY3Dsa7yP489c(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->lambda$new$0(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    invoke-direct {v0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$H;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;Landroid/os/Looper;Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$1;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "input"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    return-void
.end method

.method public static synthetic access$100(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method private addRegisterMultiFingerGestureCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/input/InputManager;->semRegisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->sInstance:Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;

    return-object v0
.end method

.method private synthetic lambda$new$0(II)V
    .locals 3

    const-string v0, "[DS]InputServiceWrapper"

    const-string v1, "onMultiFingerGesture , behavior = "

    const-string v2, ", reserved = "

    invoke-static {p1, p2, v1, v2, v0}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeUnregisterMultiFingerGestureCallback()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mMultiFingerGestureListener:Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->semUnregisterOnMultiFingerGestureListener(Landroid/hardware/input/InputManager$SemOnMultiFingerGestureListener;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->addRegisterMultiFingerGestureCallback()V

    return-void
.end method

.method public clearCallback()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->removeUnregisterMultiFingerGestureCallback()V

    return-void
.end method

.method public removeCallback(Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper$DeXMultiFingerGesture;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/InputServiceWrapper;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
