.class public final Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DevicePostureController;


# instance fields
.field public mCurrentDevicePosture:I

.field public mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

.field public final mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

.field public final mListeners:Ljava/util/List;

.field public final mSupportedStates:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10700d0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mDeviceStateToPostureMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    :catch_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/hardware/devicestate/DeviceStateManager;->getSupportedDeviceStates()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mSupportedStates:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;)V

    invoke-virtual {p2, p3, p1}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDevicePosture()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDevicePosture:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mCurrentDeviceState:Landroid/hardware/devicestate/DeviceState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mSupportedStates:Ljava/util/List;

    invoke-static {v0, p0}, Landroid/hardware/devicestate/DeviceStateUtil;->calculateBaseStateIdentifier(Landroid/hardware/devicestate/DeviceState;Ljava/util/List;)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
