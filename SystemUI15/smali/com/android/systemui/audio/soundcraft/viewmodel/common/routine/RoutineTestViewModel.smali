.class public final Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

.field public final modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

.field public final routineCount:Landroidx/lifecycle/MutableLiveData;

.field public final routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;Lcom/android/systemui/audio/soundcraft/model/ModelProvider;Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iput-object p4, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->routineCount:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public final notifyChange()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
