.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;
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
.field final synthetic $commonModel:Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;->$commonModel:Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$6;->$commonModel:Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;

    if-nez p1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->visualStabilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;->isReorderingAllowed:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->modelsPendingRemoval:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/shared/model/MediaCommonModel$MediaRecommendations;->recsLoadingModel:Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/shared/model/SmartspaceMediaLoadingModel;->getKey()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->dismissSmartspaceRecommendation(Ljava/lang/String;J)V

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaRecs:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    if-nez p1, :cond_2

    iget-object p0, v0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
