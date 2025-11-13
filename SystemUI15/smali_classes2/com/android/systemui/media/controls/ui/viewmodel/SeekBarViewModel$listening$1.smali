.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $value:Z

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-boolean p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->$value:Z

    if-eq v1, v2, :cond_0

    iput-boolean v2, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->listening:Z

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->checkIfPollingNeeded()V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$listening$1;->$value:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x3f

    invoke-static {v1, v2, v3, p0, v4}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    :cond_0
    return-void
.end method
