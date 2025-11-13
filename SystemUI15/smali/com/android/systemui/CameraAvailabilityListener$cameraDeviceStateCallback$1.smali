.class public final Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/CameraAvailabilityListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    sget-object v1, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    if-eq p3, v1, :cond_2

    const/4 v2, 0x2

    if-eq p3, v2, :cond_1

    if-eq p3, v0, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    const-string v2, "CAMERA_STATE_CLOSED"

    goto :goto_0

    :cond_1
    const-string v2, "CAMERA_STATE_IDLE"

    goto :goto_0

    :cond_2
    const-string v2, "CAMERA_STATE_ACTIVE"

    goto :goto_0

    :cond_3
    const-string v2, "CAMERA_STATE_OPEN"

    :goto_0
    const-string v3, "onCameraDeviceStateChanged: id="

    const-string v4, ", facing="

    const-string v5, ", state="

    invoke-static {p2, v3, p1, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", client="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraAvailabilityListener"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v2, v2, Lcom/android/systemui/CameraAvailabilityListener;->excludedPackageIds:Ljava/util/Set;

    invoke-interface {v2, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    return-void

    :cond_4
    if-ne p2, v1, :cond_5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p4, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object p4, p4, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object p1, p1, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_7

    if-nez v2, :cond_6

    :cond_7
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, v2, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_9
    if-nez p1, :cond_a

    if-ne p3, v0, :cond_a

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-static {p0}, Lcom/android/systemui/CameraAvailabilityListener;->access$notifyCameraInactive(Lcom/android/systemui/CameraAvailabilityListener;)V

    :cond_a
    return-void
.end method
