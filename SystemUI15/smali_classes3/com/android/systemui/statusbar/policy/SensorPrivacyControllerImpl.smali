.class public final Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/SensorPrivacyController;
.implements Landroid/hardware/SensorPrivacyManager$OnAllSensorPrivacyChangedListener;


# instance fields
.field public final mListeners:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public mSensorPrivacyEnabled:Z

.field public final mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorPrivacyManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final onAllSensorPrivacyChanged(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mSensorPrivacyEnabled:Z

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy$6;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SensorPrivacyControllerImpl;->mListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
