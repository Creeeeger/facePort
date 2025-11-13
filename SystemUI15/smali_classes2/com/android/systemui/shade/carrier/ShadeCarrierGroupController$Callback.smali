.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/CarrierTextManager$CarrierTextCallback;


# instance fields
.field public final mHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;->mHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    return-void
.end method


# virtual methods
.method public final updateCarrierInfo(Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Callback;->mHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
