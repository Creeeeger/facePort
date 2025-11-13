.class public final Lcom/android/systemui/screenshot/ScreenshotController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mMessageContainerController:Lcom/android/systemui/screenshot/MessageContainerController;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->val$screenshot:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/android/systemui/screenshot/MessageContainerController$onScreenshotTaken$1;-><init>(Lcom/android/systemui/screenshot/MessageContainerController;Lcom/android/systemui/screenshot/ScreenshotData;Lkotlin/coroutines/Continuation;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/MessageContainerController;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x3

    invoke-static {v0, v3, v3, v2, v1}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    sget-object v0, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lcom/android/systemui/screenshot/ScreenshotController;->mIsAnimationRunning:Z

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$2;->this$0:Lcom/android/systemui/screenshot/ScreenshotController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotController;->detachSemScreenshotLayoutToWindow()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
