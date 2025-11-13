.class public final Lcom/android/systemui/complication/ComplicationCollectionViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mComplications:Landroidx/lifecycle/MediatorLiveData;

.field public final mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/complication/ComplicationCollectionLiveData;Lcom/android/systemui/complication/ComplicationViewModelTransformer;)V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    new-instance v0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V

    invoke-static {p1, v0}, Landroidx/lifecycle/Transformations;->map(Landroidx/lifecycle/LiveData;Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/MediatorLiveData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mComplications:Landroidx/lifecycle/MediatorLiveData;

    iput-object p2, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;

    return-void
.end method
