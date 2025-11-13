.class public final Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/CameraAvailabilityListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraClosed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/CameraAvailabilityListener;->openCamera:Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/CameraProtectionInfo;->logicalCameraId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-static {p1}, Lcom/android/systemui/CameraAvailabilityListener;->access$notifyCameraInactive(Lcom/android/systemui/CameraAvailabilityListener;)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iput-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    return-void
.end method

.method public final onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    new-instance v1, Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/CameraAvailabilityListener;->openCamera:Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, p2, Lcom/android/systemui/CameraAvailabilityListener;->cameraProtectionInfoList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/CameraProtectionInfo;

    iget-object v3, v2, Lcom/android/systemui/CameraProtectionInfo;->logicalCameraId:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/systemui/CameraAvailabilityListener;->unavailablePhysicalCameras:Ljava/util/Set;

    iget-object v2, v2, Lcom/android/systemui/CameraProtectionInfo;->physicalCameraId:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/CameraProtectionInfo;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iput-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    iget-object p2, v1, Lcom/android/systemui/CameraProtectionInfo;->cutoutProtectionPath:Landroid/graphics/Path;

    iget-object v0, v1, Lcom/android/systemui/CameraProtectionInfo;->bounds:Landroid/graphics/Rect;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->unavailablePhysicalCameras:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->openCamera:Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;->logicalCameraId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v1, v1, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener$OpenCameraInfo;->packageId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->cameraProtectionInfoList:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/CameraProtectionInfo;

    iget-object v3, v2, Lcom/android/systemui/CameraProtectionInfo;->logicalCameraId:Ljava/lang/String;

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v2, Lcom/android/systemui/CameraProtectionInfo;->physicalCameraId:Ljava/lang/String;

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lcom/android/systemui/CameraProtectionInfo;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iput-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    iget-object p2, v1, Lcom/android/systemui/CameraProtectionInfo;->cutoutProtectionPath:Landroid/graphics/Path;

    iget-object v0, v1, Lcom/android/systemui/CameraProtectionInfo;->bounds:Landroid/graphics/Rect;

    invoke-interface {p1, p2, v0}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->unavailablePhysicalCameras:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/CameraProtectionInfo;->logicalCameraId:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/android/systemui/CameraProtectionInfo;->physicalCameraId:Ljava/lang/String;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$availabilityCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener;->activeProtectionInfo:Lcom/android/systemui/CameraProtectionInfo;

    invoke-static {p0}, Lcom/android/systemui/CameraAvailabilityListener;->access$notifyCameraInactive(Lcom/android/systemui/CameraAvailabilityListener;)V

    :cond_1
    return-void
.end method
