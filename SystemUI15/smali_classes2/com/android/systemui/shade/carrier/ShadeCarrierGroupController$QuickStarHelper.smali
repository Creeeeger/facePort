.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# instance fields
.field public mIsRegistered:Z

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final synthetic this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-void
.end method


# virtual methods
.method public final updateQuickStarStyle()V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->this$0:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;

    iget-object v0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mCarrierGroups:[Lcom/android/systemui/shade/carrier/ShadeCarrier;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController;->mQuickStarHelper:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;

    iget-object p0, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$QuickStarHelper;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v2, v2, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
