.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$IconData;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->getSlotIndex(I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$IconData;-><init>(II)V

    return-object v0
.end method
