.class public final Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$4;->this$0:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    sget p1, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;->getViewModel()Lcom/android/systemui/audio/soundcraft/viewmodel/common/routine/RoutineTestViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SoundCraft.RoutineTestViewModel"

    const-string p1, "onStopButtonClick"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
