.class public final Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$2;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;

    move-result-object p0

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;->audioPlaybackManager:Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;

    invoke-virtual {p1}, Lcom/android/systemui/audio/soundcraft/interfaces/audio/AudioPlaybackManager;->getPlayingAppPackage()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStartButtonClick : playingAppPackage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundCraft.RoutineTestViewModel"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel$onStartButtonClick$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel$onStartButtonClick$1;-><init>(Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
