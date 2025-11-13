.class public abstract Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;
.super Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final level:Landroidx/lifecycle/MutableLiveData;

.field public final levelMax:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/base/BaseViewModel;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->levelMax:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/buds/noisecontrol/NoiseControlLevelViewModel;->level:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method


# virtual methods
.method public abstract getSALoggingEvent()Lcom/android/systemui/audio/soundcraft/utils/SoundCraftSALogging$Event;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract progressChange(I)V
.end method
