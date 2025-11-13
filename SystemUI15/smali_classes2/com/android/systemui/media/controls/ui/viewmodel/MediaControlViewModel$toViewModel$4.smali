.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;
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
.field final synthetic $model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/shared/model/MediaControlModel;Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/animation/Expandable;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;->$model:Lcom/android/systemui/media/controls/shared/model/MediaControlModel;

    iget-object v1, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->clickIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel$toViewModel$4;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;

    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object v3, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->instanceId:Lcom/android/internal/logging/InstanceId;

    iget-object v2, v2, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v4, Lcom/android/systemui/media/controls/util/MediaUiEvent;->MEDIA_TAP_CONTENT_VIEW:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    iget v5, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->uid:I

    iget-object v0, v0, Lcom/android/systemui/media/controls/shared/model/MediaControlModel;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5, v0, v3}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaControlViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;

    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->launchOverLockscreen(Landroid/app/PendingIntent;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/systemui/animation/Expandable;->activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaControlInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, v1, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
