.class public final Lcom/android/systemui/doze/DozeSensors$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    :cond_0
    return-void
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    :cond_0
    return-void
.end method

.method public final updateUdfpsEnrolled()V
    .locals 9

    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_7

    aget-object v5, v0, v4

    iget v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    const/16 v7, 0xb

    const/4 v8, 0x1

    if-ne v7, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v8, v2

    :goto_1
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-ne v6, v8, :cond_1

    goto :goto_3

    :cond_1
    iput-boolean v8, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    goto :goto_3

    :cond_2
    const/16 v7, 0xa

    if-ne v7, v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {v1, v8}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v8, v2

    :cond_4
    :goto_2
    iget-boolean v6, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    if-ne v6, v8, :cond_5

    goto :goto_3

    :cond_5
    iput-boolean v8, v5, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    invoke-virtual {v5}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
