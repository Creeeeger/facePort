.class public final synthetic Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController$6;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthController$7;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$7;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$7;->this$0:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleAllFaceAuthenticatorsRegistered | sensors: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AuthController"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mFaceManager:Landroid/hardware/face/FaceManager;

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$5;

    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/AuthController$5;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    invoke-virtual {p0, v1}, Landroid/hardware/face/FaceManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onAllAuthenticatorsRegistered(I)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$6;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthController$6$$ExternalSyntheticLambda0;->f$1:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthController$6;->this$0:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, v0, Lcom/android/systemui/biometrics/AuthController;->mExecution:Lcom/android/systemui/util/concurrency/Execution;

    invoke-interface {v1}, Lcom/android/systemui/util/concurrency/Execution;->assertIsMainThread()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleAllFingerprintAuthenticatorsRegistered | sensors: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AuthController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthController;->mFpProps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v4

    :goto_2
    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsControllerFactory:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsController;

    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v3, Lcom/android/systemui/biometrics/AuthController$3;

    invoke-direct {v3, v0}, Lcom/android/systemui/biometrics/AuthController$3;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v3, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthController;I)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mAuthControllerUpdateUdfpsLocation:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/biometrics/UdfpsDisplayMode;

    iget-object v5, v0, Lcom/android/systemui/biometrics/AuthController;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsLogger:Ldagger/Lazy;

    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/biometrics/UdfpsLogger;

    invoke-direct {v3, v5, v1, v0, v6}, Lcom/android/systemui/biometrics/UdfpsDisplayMode;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/Execution;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/biometrics/UdfpsLogger;)V

    iput-object v3, p0, Lcom/android/systemui/biometrics/UdfpsController;->mUdfpsDisplayMode:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsProps:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/biometrics/SensorLocationInternal;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mUdfpsBounds:Landroid/graphics/Rect;

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v4

    :goto_3
    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthController;->mSidefpsProps:Ljava/util/List;

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/systemui/biometrics/AuthController$4;

    invoke-direct {v1, v0}, Lcom/android/systemui/biometrics/AuthController$4;-><init>(Lcom/android/systemui/biometrics/AuthController;)V

    invoke-virtual {p0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->registerBiometricStateListener(Landroid/hardware/biometrics/BiometricStateListener;)V

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->updateSensorLocations()V

    iget-object p0, v0, Lcom/android/systemui/biometrics/AuthController;->mCallbacks:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/biometrics/AuthController$Callback;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/systemui/biometrics/AuthController$Callback;->onAllAuthenticatorsRegistered(I)V

    goto :goto_4

    :cond_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
