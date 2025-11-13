.class public final Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;Lkotlinx/coroutines/channels/ProducerScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iput-object p2, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iput-object p2, p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->currentPhysicalCameraId:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->cameraInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    iget-object v1, v1, Lcom/android/systemui/biometrics/data/repository/CameraInfo;->cameraPhysicalId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Update face sensor location to "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FaceSensorPropertyRepositoryImpl"

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v0, p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->currentPhysicalCameraId:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object p1, p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->cameraInfoList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    iget-object v2, v2, Lcom/android/systemui/biometrics/data/repository/CameraInfo;->cameraPhysicalId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lcom/android/systemui/biometrics/data/repository/CameraInfo;

    iget-object p1, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->this$0:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/systemui/biometrics/data/repository/CameraInfo;->cameraPhysicalId:Ljava/lang/String;

    :cond_2
    iput-object v1, p1, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->currentPhysicalCameraId:Ljava/lang/String;

    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    iget-object p0, p0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl$cameraInfo$1$callback$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Update face sensor location to "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "FaceSensorPropertyRepositoryImpl"

    invoke-static {p0, v0, p1, p2}, Lcom/android/systemui/common/coroutine/ChannelExt;->trySendWithFailureLogging(Lkotlinx/coroutines/channels/SendChannel;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
