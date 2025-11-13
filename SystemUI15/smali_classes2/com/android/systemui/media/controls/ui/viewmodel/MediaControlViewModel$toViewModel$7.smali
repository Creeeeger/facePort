.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $mediaController:Landroid/media/session/MediaController;

.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Landroid/media/session/MediaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->$mediaController:Landroid/media/session/MediaController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-boolean v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->isResume:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->resumeProgress:Ljava/lang/Double;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x64

    int-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-int p0, v0

    new-instance v8, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v6, 0x64

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;-><init>(ZZZZLjava/lang/Integer;IZ)V

    invoke-virtual {p1, v8}, Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel$Progress;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7$1;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7;->$mediaController:Landroid/media/session/MediaController;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$7$1;-><init>(Lcom/android/systemui/media/controls/ui/viewmodel/SeekBarViewModel;Landroid/media/session/MediaController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
