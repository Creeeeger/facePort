.class public final Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;
.implements Lcom/android/systemui/demomode/DemoMode;


# static fields
.field protected static final EXTERNAL_SLOT_SUFFIX:Ljava/lang/String; = "__external"


# instance fields
.field public final mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final mCommandQueueCallbacks:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;

.field public final mContext:Landroid/content/Context;

.field public final mIconGroups:Ljava/util/ArrayList;

.field public final mIconHideList:Landroid/util/ArraySet;

.field public final mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

.field public final mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

.field public final mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

.field public final mSystemIconsAllowList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistry;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;)V

    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    iput-object p11, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p7, 0x7f03004f

    invoke-virtual {p1, p7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->updateSystemIconsAllowList()Z

    new-instance p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;)V

    new-instance p7, Landroid/content/IntentFilter;

    const-string p8, "com.samsung.carrier.action.CARRIER_CHANGED"

    invoke-direct {p7, p8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p10, p7, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iput-object p12, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iput-object p13, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    check-cast p4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {p4, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-string p1, "icon_blacklist"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "StatusBarIconControllerImpl"

    invoke-static {p6, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable$default(Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    check-cast p9, Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistryImpl;

    iget-object p1, p9, Lcom/android/systemui/statusbar/pipeline/icons/shared/BindableIconsRegistryImpl;->bindableIcons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon;

    iget-boolean p3, p2, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon;->shouldBindIcon:Z

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    const/4 p4, 0x0

    iget-object p5, p2, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon;->slot:Ljava/lang/String;

    invoke-virtual {p3, p4, p5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;

    iget-object p2, p2, Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon;->initializer:Lcom/android/systemui/statusbar/pipeline/satellite/ui/DeviceBasedSatelliteBindableIcon$initializer$1;

    invoke-direct {p3, p2, p5}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$BindableIconHolder;-><init>(Lcom/android/systemui/statusbar/pipeline/icons/shared/model/ModernStatusBarViewCreator;Ljava/lang/String;)V

    invoke-virtual {p0, p5, p3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_0

    :cond_1
    const-string p2, "StatusBarIconController"

    const-string p3, "addBindableIcon called, but icon has already been added. Ignoring"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    if-ne v1, v2, :cond_0

    const-string v1, "StatusBarIconController"

    const-string v2, "Adding new IconManager for the same ViewGroup. This could cause unexpected results."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIndicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iput v1, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mRatio:F

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->iconSize:I

    iput v0, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mIconSize:I

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mController:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->hideBySimplification(Lcom/android/systemui/statusbar/phone/ui/IconManager;Ljava/lang/String;)Z

    move-result v5

    :cond_2
    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    iget v7, v6, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v0, v7, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7, v3, v5, v6}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onIconAdded(ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final demoCommands()Ljava/util/List;
    .locals 1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    const-string p2, "StatusBarIconController state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mShouldLog:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const-string v3, "  icon views: "

    invoke-static {v3, v2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] icon="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "StatusBarIconList state:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-string v0, "  icon slots: "

    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    :goto_1
    if-ge v1, p2, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "    %2d:%s\n"

    invoke-virtual {p1, v2, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 2

    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda0;-><init>(ILcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final hideBySimplification(Lcom/android/systemui/statusbar/phone/ui/IconManager;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->HOME:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mLocation:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusBarLocation;->KEYGUARD:Lcom/android/systemui/statusbar/phone/StatusBarLocation;

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->EXTRA_SYSTEM_ICON_LIST:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final onDemoModeFinished()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/ui/IconManager;->mDemoable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->onDemoModeFinished()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->refreshIconGroups()V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->refreshIconGroups()V

    :cond_0
    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconController;->getIconHideList(Landroid/content/Context;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {p2, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeAllIconsForSlot(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    iget-object v4, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final refreshIconGroups()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ui/IconManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->addIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllIconsForSlot(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarPipelineFlags:Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/pipeline/StatusBarPipelineFlags;->isIconControlledByFlags(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring removal of ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "). It should be controlled elsewhere"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBarIconController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v0, v4, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v4

    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->removeForTag(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final removeIconGroup(Lcom/android/systemui/statusbar/phone/ui/IconManager;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ui/IconManager;->destroy()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeUnusedIconsInSlot(Ljava/lang/String;Ljava/util/List;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v0, v4, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v5

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSubscriptionsOrder:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;

    invoke-virtual {v6, v4, p2}, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SubscriptionsOrder;->getSimOrderByIds(ILjava/util/List;)I

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x1040edb

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x1040edc

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    iget v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->removeForTag(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda2;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method public final setIcon(Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    sget-object v8, Lcom/android/internal/statusbar/StatusBarIcon$Type;->SystemIcon:Lcom/android/internal/statusbar/StatusBarIcon$Type;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;Lcom/android/internal/statusbar/StatusBarIcon$Type;)V

    sget-object p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->Companion:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    iput-object p3, v1, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    iget-object p3, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object p1, p3, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_0
    return-void
.end method

.method public final setIcon(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V
    .locals 8

    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    if-nez v3, :cond_1

    iput-object p2, v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    goto :goto_1

    :cond_1
    iget-object v4, v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_4

    iget v0, p2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconHideList:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;ILjava/lang/String;ZLcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :goto_2
    return-void
.end method

.method public final setIconAccessibilityLiveRegion(ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderListInViewOrder()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->tag:I

    invoke-virtual {v0, v2, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getViewIndex(ILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mIconGroups:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v4, v2, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl$$ExternalSyntheticLambda4;-><init>(II)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final setIconContentDescription(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->icon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-object p1, v1, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :cond_0
    return-void
.end method

.method public final setIconVisibility(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mStatusBarIconList:Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->isVisible()Z

    move-result v1

    if-ne v1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;->setVisible(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->handleSet(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateSystemIconsAllowList()Z
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v1, "LGT"

    const-string v2, "SKT"

    const-string v3, "KTT"

    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mCarrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v5, v2, v3, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    const v6, 0x1040ed7

    const v7, 0x1040ed6

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v5, v2, v3, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v8, "ORANGE"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {v5, v2, v4, v1}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconControllerImpl;->mSystemIconsAllowList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eq v0, p0, :cond_4

    move v3, v4

    :cond_4
    return v3
.end method
