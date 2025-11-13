.class public final Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$3;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->getPlayingAppPackage()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onUpdateButtonClick : playingAppPackage="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundCraft.RoutineTestViewModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->routineManager:Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->getRoutineId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "onUpdateButtonClick : routineId="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->modelProvider:Lcom/android/systemui/audio/soundcraft/model/ModelProvider;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/model/ModelProvider;->effectModel:Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;

    invoke-virtual {v0, p1, v2, p0}, Lcom/android/systemui/audio/soundcraft/interfaces/routine/manager/RoutineManager;->updateRoutine(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/audio/soundcraft/model/common/EffectModel;)V

    :cond_1
    :goto_0
    return-void
.end method
