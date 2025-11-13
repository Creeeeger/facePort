.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;
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
.field final synthetic $mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaAction;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->$mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->$mediaAction:Lcom/android/systemui/media/controls/shared/model/MediaAction;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaAction;->action:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toSemanticActionViewModel$1;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1, v2, v3, p0}, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logTapAction(IILcom/android/internal/logging/InstanceId;Ljava/lang/String;)V

    const/4 p0, 0x1

    iput-boolean p0, v1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->isAnyButtonClicked:Z

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
