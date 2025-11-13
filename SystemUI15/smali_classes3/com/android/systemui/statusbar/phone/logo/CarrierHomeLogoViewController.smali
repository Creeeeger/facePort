.class public final Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

.field public final carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

.field public final carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

.field public final defaultDataListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;

.field public final deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

.field public final logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

.field public final quickStarListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;

.field public final serviceStateChanged:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$special$$inlined$map$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private final settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

.field public final simStateChanged:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

.field public final slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field public final slotId:I

.field public final spnUpdated:Lkotlinx/coroutines/flow/Flow;

.field public final subscriptionManager:Landroid/telephony/SubscriptionManager;

.field public userSetup:Z

.field public final visibilityHistory:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;ILcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;Lcom/android/systemui/util/CarrierConfigTracker;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p16

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    move v2, p7

    iput v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slotId:I

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    move-object/from16 v2, p9

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    move-object/from16 v2, p11

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$settingsListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$settingsListener$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isCurrentUserSetup()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->userSetup:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->quickStarListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    move-object p3, p2

    move-object p4, v1

    move-object p5, v4

    move p6, v2

    move-object p7, v3

    move p8, v5

    invoke-static/range {p3 .. p8}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$simStateChanged$1;

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$simStateChanged$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    invoke-direct {v4, v2, v1}, Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->simStateChanged:Lkotlinx/coroutines/flow/FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$serviceStateChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$serviceStateChanged$1;

    const/16 v4, 0xe

    move-object v5, p2

    invoke-static {p2, v1, v3, v2, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$special$$inlined$map$1;

    invoke-direct {v2, v1, p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->serviceStateChanged:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$special$$inlined$map$1;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.SERVICE_PROVIDERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    move-object p1, p2

    move-object p2, v1

    move-object p3, v4

    move p4, v2

    move-object p5, v3

    move p6, v6

    invoke-static/range {p1 .. p6}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->broadcastFlow$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/IntentFilter;Landroid/os/UserHandle;ILjava/lang/String;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->spnUpdated:Lkotlinx/coroutines/flow/Flow;

    new-instance v1, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    return-void
.end method

.method public static final synthetic access$getSettingsHelper$p(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static final access$updateSimTypes(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->subscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getCompleteActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->simTypes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    invoke-interface {v6, v3, v4, v5}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "SKT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v1, v3, :cond_3

    :goto_1
    move v1, v5

    goto/16 :goto_3

    :cond_3
    move v1, v2

    goto/16 :goto_3

    :cond_4
    const-string v4, "KTT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_5
    const-string v4, "LGT"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_6
    const-string v4, "ORANGE"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->defaultSubscriptionSlotId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->simCardInfoUtil:Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "Orange F"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "SimCardInfoUtil"

    if-eqz v6, :cond_7

    iget-object v4, v3, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v3, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "numeric information, sim="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " plmn="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v6, 0x3

    if-lt v3, v6, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_8

    new-instance v3, Lkotlin/ranges/IntRange;

    const/4 v6, 0x2

    invoke-direct {v3, v2, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v7, v3, Lkotlin/ranges/IntProgression;->first:I

    iget v3, v3, Lkotlin/ranges/IntProgression;->last:I

    add-int/2addr v3, v5

    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lkotlin/ranges/IntRange;

    invoke-direct {v4, v2, v6}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v6, v4, Lkotlin/ranges/IntProgression;->first:I

    iget v4, v4, Lkotlin/ranges/IntProgression;->last:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_7
    const-string/jumbo v1, "spn isn\'t matched with Orange="

    invoke-static {v1, v4, v7}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    goto/16 :goto_1

    :goto_3
    if-eqz v1, :cond_2

    move v2, v5

    :cond_9
    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->matchedSim:Z

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->userSetup:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " userSetup="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Last visibility state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onDensityOrFontScaleChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->indicatorScaleGardener:Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener;->getLatestScaleModel(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardener$ScaleModel;->ratio:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0714b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public final onDisplayDeviceTypeChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/CarrierConfigTracker;->addDefaultDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isCarrierLogoEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->settingEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v3, 0x1

    new-array v4, v3, [Landroid/net/Uri;

    const-string/jumbo v5, "status_bar_show_network_information"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    if-eqz v0, :cond_8

    sget-object v2, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;->ICON_BRANDING:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierInfraMediator:Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;

    iget v7, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slotId:I

    invoke-interface {v5, v2, v7, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v8, "SKT"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "ORANGE"

    const-string v11, "LGT"

    const-string v12, "KTT"

    if-eqz v9, :cond_0

    const v4, 0x7f081290

    goto :goto_0

    :cond_0
    invoke-static {v4, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const v4, 0x7f08128d

    goto :goto_0

    :cond_1
    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const v4, 0x7f08128e

    goto :goto_0

    :cond_2
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const v4, 0x7f08128f

    goto :goto_0

    :cond_3
    move v4, v6

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-array v4, v6, [Ljava/lang/Object;

    invoke-interface {v5, v2, v7, v4}, Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator;->get(Lcom/android/systemui/statusbar/pipeline/carrier/CarrierInfraMediator$Values;I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1312ad

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1312ac

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f1312ab

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :sswitch_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_1
    const-string v2, ""

    goto :goto_2

    :cond_7
    const-string v2, "Orange F"

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v2, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    iget-object v2, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mPluginMediator:Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;

    iget-boolean v2, v2, Lcom/android/systemui/slimindicator/SlimIndicatorPluginMediator;->mIsSPluginConnected:Z

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->mCarrierCrew:Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;

    iget v2, v2, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-ne v2, v3, :cond_9

    move v6, v3

    :cond_9
    xor-int/lit8 v2, v6, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->quickStarEnabled:Z

    const-string v1, "CarrierHomeLogoViewController"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->quickStarListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$quickStarListener$1;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerNormalDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$onViewAttached$1;-><init>(Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x748ee5d2 -> :sswitch_3
        0x1240b -> :sswitch_2
        0x12639 -> :sswitch_1
        0x140fc -> :sswitch_0
    .end sparse-switch
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->defaultDataListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$defaultDataListener$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierConfigTracker:Lcom/android/systemui/util/CarrierConfigTracker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/CarrierConfigTracker;->removeDataSubscriptionChangedListener(Lcom/android/systemui/util/CarrierConfigTracker$DefaultDataSubscriptionChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->logoView:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->darkIconDispatcher:Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->deviceProvisionedListener:Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController$deviceProvisionedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->slimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;

    const-string v1, "CarrierHomeLogoViewController"

    invoke-virtual {v0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediatorImpl;->unregisterSubscriber(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    return-void
.end method

.method public final updateCarrierLogoVisibility()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->carrierLogoVisibilityManager:Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->getVisible()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->getVisible()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/logo/CarrierHomeLogoViewController;->visibilityHistory:Ljava/util/LinkedList;

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/logo/CarrierLogoVisibilityManager;->getVisible()I

    move-result p0

    const-string v0, "Visibility changed="

    const-string v1, "CarrierHomeLogoViewController"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
