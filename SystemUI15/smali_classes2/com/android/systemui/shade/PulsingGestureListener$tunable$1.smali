.class public final Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public final synthetic $userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final synthetic this$0:Lcom/android/systemui/shade/PulsingGestureListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;->this$0:Lcom/android/systemui/shade/PulsingGestureListener;

    iput-object p2, p0, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p2, "doze_pulse_on_double_tap"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;->$userTracker:Lcom/android/systemui/settings/UserTracker;

    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;->this$0:Lcom/android/systemui/shade/PulsingGestureListener;

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->doubleTapEnabled:Z

    goto :goto_0

    :cond_0
    const-string p2, "doze_tap_gesture"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    :cond_1
    :goto_0
    return-void
.end method
