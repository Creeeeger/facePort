.class public final Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataInteractor;


# instance fields
.field public final batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field public final cameraAutoRotateRepository:Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepository;

.field public final cameraSensorPrivacyRepository:Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepository;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final resources:Landroid/content/res/Resources;

.field public final rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RotationLockController;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepository;Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepository;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->cameraAutoRotateRepository:Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepository;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->cameraSensorPrivacyRepository:Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepository;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->packageManager:Landroid/content/pm/PackageManager;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->resources:Landroid/content/res/Resources;

    return-void
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
    .locals 4

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->rotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p2}, Lcom/android/systemui/util/kotlin/RotationLockControllerExtKt;->isRotationLockEnabled(Lcom/android/systemui/statusbar/policy/RotationLockController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->cameraSensorPrivacyRepository:Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepository;

    check-cast v0, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/camera/data/repository/CameraSensorPrivacyRepositoryImpl;->isEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v1}, Lcom/android/systemui/util/kotlin/BatteryControllerExtKt;->isBatteryPowerSaveEnabled(Lcom/android/systemui/statusbar/policy/BatteryController;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;->cameraAutoRotateRepository:Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepository;

    check-cast v2, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/camera/data/repository/CameraAutoRotateRepositoryImpl;->isCameraAutoRotateSettingEnabled(Landroid/os/UserHandle;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor$tileData$1;-><init>(Lcom/android/systemui/qs/tiles/impl/rotation/domain/interactor/RotationLockTileDataInteractor;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0, v1, p1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function5;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$2;

    move-result-object p0

    return-object p0
.end method
