.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;
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
.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;->$model:Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel$toGutsViewModel$1;->$model:Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;

    iget-object v1, p0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->dismissIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v4, v4, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v5, Lcom/android/systemui/media/controls/util/MediaUiEvent;->DISMISS_LONG_PRESS:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v6, p0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->uid:I

    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaRecommendationsModel;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, v6, p0, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaRecommendationsViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;

    iget-object v0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->mediaDataProcessor:Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;

    const-wide/16 v3, 0x14e

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/media/controls/domain/pipeline/MediaDataProcessor;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    if-nez v2, :cond_0

    const-string p0, "MediaRecommendationsInteractor"

    const-string v0, "Cannot create dismiss action click action: extras missing dismiss_intent."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.google.android.apps.gsa.staticplugins.opa.smartspace.ExportedSmartspaceTrampolineActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->applicationContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaRecommendationsInteractor;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    invoke-virtual {p0, v2}, Lcom/android/systemui/broadcast/BroadcastSender;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
