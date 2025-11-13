.class public final Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecSeekBarViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecSeekBarViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-object v1, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    iget-object v0, v0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel$clearController$1;->this$0:Lcom/android/systemui/media/SecSeekBarViewModel;

    iput-object v1, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->cancel:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->_data:Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Lcom/android/systemui/media/SecSeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;ZLjava/lang/Integer;ZI)Lcom/android/systemui/media/SecSeekBarViewModel$Progress;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/SecSeekBarViewModel;->set_data(Lcom/android/systemui/media/SecSeekBarViewModel$Progress;)V

    return-void
.end method
