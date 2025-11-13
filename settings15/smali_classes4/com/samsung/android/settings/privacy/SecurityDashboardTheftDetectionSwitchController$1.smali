.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    iget p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_0
    const/4 p2, 0x7

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    iget-object p1, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "mandatory_biometrics"

    const/4 v1, -0x1

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    iget-object p2, p2, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isInTrustedPlace(Landroid/content/Context;)Z

    move-result p2

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->-$$Nest$mauthenticate3p(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 2

    iget p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->-$$Nest$mauthenticate(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    iget-object p1, p1, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "theft_detection_lock_setting"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController$1;->this$0:Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;

    invoke-static {p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/privacy/SecurityDashboardTheftDetectionSwitchController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
