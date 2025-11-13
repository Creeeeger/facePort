.class public final Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

.field public final locationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final uiModeManager:Landroid/app/UiModeManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/app/UiModeManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/util/time/DateFormatUtil;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->uiModeManager:Landroid/app/UiModeManager;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    return-void
.end method

.method public static final access$createModel(Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;)Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->locationController:Lcom/android/systemui/statusbar/policy/LocationController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;->isLocationEnabled$1()Z

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightModeCustomType()I

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->dateFormatUtil:Lcom/android/systemui/util/time/DateFormatUtil;

    invoke-virtual {v0}, Lcom/android/systemui/util/time/DateFormatUtil;->is24HourFormat()Z

    move-result v7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCustomNightModeEnd()Ljava/time/LocalTime;

    move-result-object v8

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {p0}, Landroid/app/UiModeManager;->getCustomNightModeStart()Ljava/time/LocalTime;

    move-result-object v9

    new-instance p0, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/model/UiModeNightTileModel;-><init>(IZZZIZLjava/time/LocalTime;Ljava/time/LocalTime;)V

    return-object p0
.end method


# virtual methods
.method public final availability(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/Flow;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    invoke-direct {p1, p0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final tileData(Landroid/os/UserHandle;Lkotlinx/coroutines/flow/ReadonlySharedFlow;)Lkotlinx/coroutines/flow/Flow;
    .locals 1

    sget-object p1, Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;->INSTANCE:Lcom/android/systemui/common/coroutine/ConflatedCallbackFlow;

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor$tileData$1;-><init>(Lcom/android/systemui/qs/tiles/impl/uimodenight/domain/interactor/UiModeNightTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/android/systemui/utils/coroutines/flow/FlowConflatedKt;->conflatedCallbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method
