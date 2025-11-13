.class public final Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileUserActionInteractor;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public longClickIntent:Landroid/content/Intent;

.field public final qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

.field public final safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

.field public final sensorId:I

.field public final sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Landroid/safetycenter/SafetyCenterManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    iput p6, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorId:I

    return-void
.end method


# virtual methods
.method public final handleInput(Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    iget-object p2, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    instance-of v0, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$Click;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->data:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/model/SensorPrivacyToggleTileModel;

    iget-boolean p1, p1, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/model/SensorPrivacyToggleTileModel;->isBlocked:Z

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p2, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {v0}, Landroid/hardware/SensorPrivacyManager;->requiresAuthentication()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    iget-object v1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardDismissible:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p2, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor$handleInput$2$1;-><init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->sensorId:I

    invoke-virtual {p2, v0, p0, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    goto :goto_1

    :cond_1
    instance-of p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction$LongClick;

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->longClickIntent:Landroid/content/Intent;

    if-nez p2, :cond_3

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->safetyCenterManager:Landroid/safetycenter/SafetyCenterManager;

    invoke-virtual {v0}, Landroid/safetycenter/SafetyCenterManager;->isSafetyCenterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.settings.PRIVACY_CONTROLS"

    goto :goto_0

    :cond_2
    const-string v0, "android.settings.PRIVACY_SETTINGS"

    :goto_0
    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->longClickIntent:Landroid/content/Intent;

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/qs/tiles/base/interactor/QSTileInput;->action:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;

    invoke-interface {p1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUserAction;->getExpandable()Lcom/android/systemui/animation/Expandable;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->longClickIntent:Landroid/content/Intent;

    if-nez p2, :cond_4

    const/4 p2, 0x0

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/domain/SensorPrivacyToggleTileUserActionInteractor;->qsTileIntentUserActionHandler:Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;

    invoke-static {p0, p1, p2}, Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;->handle$default(Lcom/android/systemui/qs/tiles/base/actions/QSTileIntentUserInputHandler;Lcom/android/systemui/animation/Expandable;Landroid/content/Intent;)V

    :cond_5
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
