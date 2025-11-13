.class public Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;
.super Landroid/app/Activity;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final bgHandler:Landroid/os/Handler;

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mBackCallback:Lkotlin/reflect/KFunction;

.field public mDialog:Lcom/android/systemui/sensorprivacy/SensorUseDialog;

.field public mShouldRunDisableSensorPrivacy:Z

.field public sensor:I

.field public final sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

.field public sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

.field public sensorUsePackageName:Ljava/lang/String;

.field public unsuppressImmediately:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardDismissUtil;Lcom/android/systemui/plugins/ActivityStarter;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    iput-object p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p5, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    new-instance p1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$mBackCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$mBackCallback$1;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mBackCallback:Lkotlin/reflect/KFunction;

    return-void
.end method


# virtual methods
.method public final disableSensorPrivacy()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    const/4 v1, 0x2

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->setSensorBlocked(IIZ)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public final isCameraBlocked(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, p1}, Landroid/hardware/SensorPrivacyManager;->isCameraPrivacyEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p0

    return p0
.end method

.method public final onBackPressed()V
    .locals 0

    return-void
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 p1, -0x2

    const/4 v0, 0x0

    const/16 v1, 0x17e

    if-eq p2, p1, :cond_3

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p1}, Landroid/hardware/SensorPrivacyManager;->requiresAuthentication()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v2, p1

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-eqz v2, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->disableSensorPrivacy()V

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-static {v1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p1

    :goto_1
    const/4 p1, 0x2

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x51

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const v1, 0x7fffffff

    iput v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    iget-object v3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, p1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->isCameraBlocked(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v3, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    iput v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onCreate$callback$2;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    iput-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    iget-object v3, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v3, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorUsePackageName:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->isCameraBlocked(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_6
    iget v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    if-ne v1, p1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->isSensorBlocked(I)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_7
    new-instance p1, Lcom/android/systemui/sensorprivacy/SensorUseDialog;

    iget v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    invoke-direct {p1, p0, v1, p0, p0}, Lcom/android/systemui/sensorprivacy/SensorUseDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object p1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mDialog:Lcom/android/systemui/sensorprivacy/SensorUseDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mBackCallback:Lkotlin/reflect/KFunction;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v0, v1}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mDialog:Lcom/android/systemui/sensorprivacy/SensorUseDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyListener:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController$Callback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mBackCallback:Lkotlin/reflect/KFunction;

    new-instance v2, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v1}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$sam$android_window_OnBackInvokedCallback$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v2}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    iget-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->mShouldRunDisableSensorPrivacy:Z

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onDestroy$2;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-boolean v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->unsuppressImmediately:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->setSuppressed(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->bgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity$onStop$1;-><init>(Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public final setSuppressed(Z)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensor:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZ)V

    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZ)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/sensorprivacy/SensorUseStartedActivity;->sensorPrivacyController:Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyController;

    check-cast p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/IndividualSensorPrivacyControllerImpl;->mSensorPrivacyManager:Landroid/hardware/SensorPrivacyManager;

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorPrivacyManager;->suppressSensorPrivacyReminders(IZ)V

    :goto_0
    return-void
.end method
