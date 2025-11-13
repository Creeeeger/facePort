.class public final Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;


# instance fields
.field public final carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    return-void
.end method


# virtual methods
.method public final varargs get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p3}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final varargs isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/carrier/FakeCarrierInfraMediatorImpl;->carrierInfraMediatorImpl:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediatorImpl;->isEnabled(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Conditions;I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
