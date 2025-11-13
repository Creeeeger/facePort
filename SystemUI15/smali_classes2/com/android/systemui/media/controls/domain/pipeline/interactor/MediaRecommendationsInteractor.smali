.class public final Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

.field public final onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

.field public final recommendations:Lkotlinx/coroutines/flow/Flow;

.field public final repository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACTION_MEDIA_CONTROLS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroid/content/Context;Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->repository:Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    iput-object p5, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    iput-object p6, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p2, p3, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->smartspaceMediaData:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance p4, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1;

    invoke-direct {p4, p2, p0}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p4

    iput-object p4, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->recommendations:Lkotlinx/coroutines/flow/Flow;

    new-instance p4, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$2;

    invoke-direct {p4, p2}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    sget-object p4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    const/4 p5, 0x3

    invoke-static {p4, p5}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default(Lkotlinx/coroutines/flow/SharingStarted$Companion;I)Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    move-result-object p4

    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2, p1, p4, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    iget-object p1, p3, Lcom/android/systemui/media/controls/data/repository/MediaFilterRepository;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    iput-object p1, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->onAnyMediaConfigurationChange:Lkotlinx/coroutines/flow/Flow;

    return-void
.end method
