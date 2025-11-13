.class public final synthetic Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/complication/ComplicationCollectionViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/complication/ComplicationCollectionViewModel;

    check-cast p1, Lcom/android/systemui/complication/Complication;

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationCollectionViewModel;->mTransformer:Lcom/android/systemui/complication/ComplicationViewModelTransformer;

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    new-instance v1, Lcom/android/systemui/complication/ComplicationId;

    iget-object v2, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdFactory:Lcom/android/systemui/complication/ComplicationId$Factory;

    iget v3, v2, Lcom/android/systemui/complication/ComplicationId$Factory;->mNextId:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v2, Lcom/android/systemui/complication/ComplicationId$Factory;->mNextId:I

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/complication/ComplicationId;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mComplicationIdMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/complication/ComplicationId;

    iget-object p0, p0, Lcom/android/systemui/complication/ComplicationViewModelTransformer;->mViewModelComponentFactory:Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent$Factory;->create(Lcom/android/systemui/complication/Complication;Lcom/android/systemui/complication/ComplicationId;)Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/complication/dagger/ComplicationViewModelComponent;->getViewModelProvider()Lcom/android/systemui/complication/ComplicationViewModelProvider;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/systemui/complication/ComplicationId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/android/systemui/complication/ComplicationViewModel;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/ViewModelProvider;->impl:Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/jvm/internal/ClassReference;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/complication/ComplicationViewModel;

    return-object p0
.end method
