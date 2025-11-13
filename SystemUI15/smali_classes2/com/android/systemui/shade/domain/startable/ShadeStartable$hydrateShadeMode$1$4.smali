.class public final Lcom/android/systemui/shade/domain/startable/ShadeStartable$hydrateShadeMode$1$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/domain/startable/ShadeStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/domain/startable/ShadeStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable$hydrateShadeMode$1$4;->this$0:Lcom/android/systemui/shade/domain/startable/ShadeStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable$hydrateShadeMode$1$4;->this$0:Lcom/android/systemui/shade/domain/startable/ShadeStartable;

    iget-object p0, p0, Lcom/android/systemui/shade/domain/startable/ShadeStartable;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/shade/shared/model/ShadeMode$Split;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Split;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/shade/shared/model/ShadeMode$Single;->INSTANCE:Lcom/android/systemui/shade/shared/model/ShadeMode$Single;

    :goto_0
    check-cast p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;

    const/4 p2, 0x0

    iget-object p0, p0, Lcom/android/systemui/shade/data/repository/ShadeRepositoryImpl;->_shadeMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, p2, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
