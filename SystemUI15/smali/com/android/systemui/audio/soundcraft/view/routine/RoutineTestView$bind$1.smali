.class public final Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;


# direct methods
.method public constructor <init>(Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$1;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView$bind$1;->$viewBinding:Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;

    iget-object p0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->routineCountText:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
