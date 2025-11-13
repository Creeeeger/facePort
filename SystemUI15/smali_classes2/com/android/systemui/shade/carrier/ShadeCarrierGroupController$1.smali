.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/connectivity/SignalCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setMobileDataIndicators(Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget p1, p1, Lcom/android/systemui/statusbar/connectivity/MobileDataIndicators;->subId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->getSlotIndex(I)I

    move-result p0

    const/4 v0, 0x3

    const-string v1, "ShadeCarrierGroup"

    if-lt p0, v0, :cond_0

    const-string/jumbo p1, "setMobileDataIndicators - slot: "

    invoke-static {p0, p1, v1}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    const-string p0, "Invalid SIM slot index for subscription: "

    invoke-static {p1, p0, v1}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setNoSims(ZZ)V
    .locals 8

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$1;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x3

    if-ge p1, p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mInfos:[Lcom/android/systemui/shade/carrier/CellSignalState;

    aget-object v0, p2, p1

    iget-boolean v1, v0, Lcom/android/systemui/shade/carrier/CellSignalState;->visible:Z

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/systemui/shade/carrier/CellSignalState;

    iget-object v6, v0, Lcom/android/systemui/shade/carrier/CellSignalState;->typeContentDescription:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/android/systemui/shade/carrier/CellSignalState;->roaming:Z

    const/4 v3, 0x0

    iget v4, v0, Lcom/android/systemui/shade/carrier/CellSignalState;->mobileSignalIconId:I

    iget-object v5, v0, Lcom/android/systemui/shade/carrier/CellSignalState;->contentDescription:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/shade/carrier/CellSignalState;-><init>(ZILjava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    :goto_1
    aput-object v0, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
