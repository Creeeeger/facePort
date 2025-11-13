.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda6;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    return-void
.end method
