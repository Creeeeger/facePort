.class public final Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

.field public final mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

.field public final mLooper:Landroid/os/Looper;

.field public final mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

.field public final mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

.field public final mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/keyguard/CarrierTextManager$Builder;Landroid/content/Context;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p2, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLogger:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupControllerLogger;

    iput-object p5, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    iput-object p6, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mCarrierTextControllerBuilder:Lcom/android/keyguard/CarrierTextManager$Builder;

    iput-object p7, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mCarrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iput-object p9, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mSlotIndexResolver:Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$SlotIndexResolver;

    iput-object p10, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mMobileUiAdapter:Lcom/android/systemui/statusbar/pipeline/mobile/ui/MobileUiAdapter;

    iput-object p11, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mMobileContextProvider:Lcom/android/systemui/statusbar/connectivity/ui/MobileContextProvider;

    iput-object p12, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    iput-object p13, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mLatinNetworkNameProvider:Lcom/android/systemui/shade/carrier/LatinNetworkNameProvider;

    iput-object p14, p0, Lcom/android/systemui/shade/carrier/ShadeCarrierGroupController$Builder;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    return-void
.end method
