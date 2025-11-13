.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;Lcom/android/systemui/media/controls/shared/model/MediaControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$5;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v0, v0, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v3, Lcom/android/systemui/media/controls/util/MediaUiEvent;->OPEN_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3, v1, p0, v2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
