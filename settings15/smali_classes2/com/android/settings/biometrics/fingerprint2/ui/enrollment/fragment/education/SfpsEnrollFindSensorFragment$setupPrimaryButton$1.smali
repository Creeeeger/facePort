.class public final Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x0

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;->access$getViewModel(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;)Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;

    sget-object p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    throw p1

    :pswitch_0
    const-string v0, "SfpsEnrollFindSensor"

    const-string v1, "onStartButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment$setupPrimaryButton$1;->this$0:Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;->access$getViewModel(Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/fragment/education/SfpsEnrollFindSensorFragment;)Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintEnrollFindSensorViewModel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p0, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;->$VALUES:[Lcom/android/settings/biometrics/fingerprint2/ui/enrollment/viewmodel/FingerprintAction;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
