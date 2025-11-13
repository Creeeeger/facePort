.class public final Lcom/android/systemui/CameraAvailabilityListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;


# instance fields
.field public activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

.field public final cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

.field public final cameraDeviceStates:Ljava/util/HashMap;

.field public final cameraManager:Landroid/hardware/camera2/CameraManager;

.field public final cameraProtectionInfoList:Ljava/util/List;

.field public final excludedPackageIds:Ljava/util/Set;

.field public final executor:Ljava/util/concurrent/Executor;

.field public final handler:Landroid/os/Handler;

.field public final listeners:Ljava/util/List;

.field public openCamera:Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;

.field public final unavailablePhysicalCameras:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/CameraAvailabilityListener$Factory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/CameraAvailabilityListener$Factory;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraManager;",
            "Ljava/util/List<",
            "Lcom/android/systemui/CameraProtectionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraProtectionInfoList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/CameraAvailabilityListener;->executor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->unavailablePhysicalCameras:Ljava/util/Set;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    new-instance p1, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;-><init>(Lcom/android/systemui/CameraAvailabilityListener;)V

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    const-string p1, ","

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 p4, 0x0

    invoke-static {p3, p1, p4, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    return-void
.end method

.method public static final access$notifyCameraInactive(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    invoke-interface {v0}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onHideCameraProtection()V

    goto :goto_0

    :cond_0
    return-void
.end method
