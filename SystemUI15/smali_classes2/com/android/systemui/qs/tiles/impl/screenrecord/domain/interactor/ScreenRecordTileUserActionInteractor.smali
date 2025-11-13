.class public final Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final backgroundContext:Lkotlin/coroutines/CoroutineContext;

.field public final context:Landroid/content/Context;

.field public final dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

.field public final keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final mainContext:Lkotlin/coroutines/CoroutineContext;

.field public final mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

.field public final panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public final recordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field public final screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;Lcom/android/systemui/screenrecord/RecordingController;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Lcom/android/systemui/flags/FeatureFlagsClassic;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->mainContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->recordingController:Lcom/android/systemui/screenrecord/RecordingController;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->keyguardDismissUtil:Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->dialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->panelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->mediaProjectionMetricsLogger:Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlagsClassic;

    iput-object p12, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v1, :cond_2

    iget-object v0, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel;

    instance-of v1, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Starting;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "ScreenRecordTileUserActionInteractor"

    const-string v0, "Cancelling countdown"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$handleInput$2$1;

    invoke-direct {p1, p0, v2}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$handleInput$2$1;-><init>(Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->backgroundContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_0
    instance-of v1, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$Recording;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->screenRecordRepository:Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepository;

    check-cast p0, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/screenrecord/data/repository/ScreenRecordRepositoryImpl;->stopRecording(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_1
    instance-of v0, v0, Lcom/android/systemui/screenrecord/data/model/ScreenRecordModel$DoingNothing;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$handleInput$2$2;

    invoke-direct {v0, p0, p1, v2}, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor$handleInput$2$2;-><init>(Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/screenrecord/domain/interactor/ScreenRecordTileUserActionInteractor;->mainContext:Lkotlin/coroutines/CoroutineContext;

    invoke-static {p0, v0, p2}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_2
    instance-of p0, v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
