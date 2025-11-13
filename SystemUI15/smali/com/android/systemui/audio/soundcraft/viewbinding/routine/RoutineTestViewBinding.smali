.class public final Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final root:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

.field public final routineCountText:Landroid/widget/TextView;

.field public final startButton:Landroid/view/View;

.field public final stopButton:Landroid/view/View;

.field public final updateButton:Landroid/view/View;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewStub;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->view:Landroid/view/View;

    const v0, 0x7f0a09fb

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->root:Lcom/android/systemui/audio/soundcraft/view/routine/RoutineTestView;

    const v0, 0x7f0a09fd

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->startButton:Landroid/view/View;

    const v0, 0x7f0a09ff

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->updateButton:Landroid/view/View;

    const v0, 0x7f0a09fe

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->stopButton:Landroid/view/View;

    const v0, 0x7f0a09fc

    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/viewbinding/routine/RoutineTestViewBinding;->routineCountText:Landroid/widget/TextView;

    return-void
.end method
