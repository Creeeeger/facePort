.class final Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$5;
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
.field final synthetic this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$5;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel;

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel$toViewModel$5;->this$0:Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;

    check-cast p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->interactor:Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/media/controls/domain/pipeline/interactor/MediaCarouselInteractor;->isRecommendationActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCarouselViewModel;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    iget-object p0, p1, Lcom/android/systemui/media/controls/ui/viewmodel/MediaCommonViewModel$MediaRecommendations;->onRemoved:Lkotlin/jvm/functions/Function1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
