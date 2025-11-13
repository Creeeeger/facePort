.class public final synthetic Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/screenshot/ScreenshotController;

.field public final synthetic f$1:Lcom/android/systemui/screenshot/ScreenshotData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;I)V
    .locals 0

    iput p3, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotData;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    new-instance v1, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda14;

    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;)V

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mAnnouncementResolver:Lcom/android/systemui/screenshot/AnnouncementResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, p0, v3}, Lcom/android/systemui/screenshot/AnnouncementResolver$getScreenshotAnnouncement$2;-><init>(Ljava/util/function/Consumer;Lcom/android/systemui/screenshot/AnnouncementResolver;ILkotlin/coroutines/Continuation;)V

    iget-object p0, v0, Lcom/android/systemui/screenshot/AnnouncementResolver;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v0, 0x3

    invoke-static {p0, v3, v3, v2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/screenshot/ScreenshotController;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda6;->f$1:Lcom/android/systemui/screenshot/ScreenshotData;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/screenshot/ScreenshotController;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$2;

    invoke-direct {v3, v0, p0}, Lcom/android/systemui/screenshot/ScreenshotController$2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;Lcom/android/systemui/screenshot/ScreenshotData;)V

    iput-object v3, v2, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->mCallback:Lcom/android/systemui/screenshot/ScreenshotController$2;

    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mFeedbackController:Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/sep/ScreenshotFeedbackController;->semPlayCameraSound()V

    iget-object p0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSemScreenshotLayout:Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;

    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/screenshot/sep/widget/SemScreenshotLayout;->startAnimation(FF)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/systemui/screenshot/ScreenshotController;->mIsAnimationRunning:Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
