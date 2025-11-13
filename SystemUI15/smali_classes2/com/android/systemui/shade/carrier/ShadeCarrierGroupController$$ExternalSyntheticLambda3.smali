.class public final synthetic Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$$ExternalSyntheticLambda3;->f$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    check-cast p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mMainHandler:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$H;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->VERBOSE:Lcom/android/systemui/log/core/LogLevel;

    sget-object v3, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger$logHandleUpdateCarrierInfo$2;->INSTANCE:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger$logHandleUpdateCarrierInfo$2;

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    const-string v5, "SCGC"

    invoke-virtual {v0, v5, v1, v3, v4}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object v1

    iget-object v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/log/LogMessageImpl;

    iput-object v3, v4, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iget-boolean v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->anySimReady:Z

    iput-boolean v3, v4, Lcom/android/systemui/log/LogMessageImpl;->bool1:Z

    iget-boolean v3, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->airplaneMode:Z

    iput-boolean v3, v4, Lcom/android/systemui/log/LogMessageImpl;->bool2:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mNoSimTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p1, Lcom/android/keyguard/CarrierTextManager$CarrierTextCallbackInfo;->carrierText:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    check-cast v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;

    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isUseLatinNetworkName()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v3, v0, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isAirplaneMode:Z

    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->getCombinedNetworkName()Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v3, "handleUpdateCarrierInfo ["

    const-string v4, "] isLatin="

    invoke-static {v3, p1, v4}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/shade/carrier/LatinNetworkNameProviderImpl;->isUseLatinNetworkName()Z

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ShadeCarrierGroup"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/android/systemui/shade/carrier/ShadeCarrier;->setCarrierText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    aget-object p1, p1, v2

    iget-object v3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    iget-object v3, v3, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-object v4, v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v4, v4, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    iget v3, v3, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    if-ne v3, v5, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    aget-object p1, v0, v5

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->handleUpdateState()V

    :goto_0
    return-void
.end method
