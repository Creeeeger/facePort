.class public final Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$ScrubbingChangeListener;

    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$EnabledChangeListener;

    return-void
.end method
