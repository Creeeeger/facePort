.class public abstract Lcom/android/systemui/biometrics/data/repository/BiometricStatusRepositoryKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$toAuthenticationReason(I)Lcom/android/systemui/biometrics/shared/model/AuthenticationReason;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$Unknown;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$Unknown;

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;->OTHER:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;-><init>(Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$OtherAuthentication;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$OtherAuthentication;

    goto :goto_0

    :pswitch_2
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$DeviceEntryAuthentication;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$DeviceEntryAuthentication;

    goto :goto_0

    :pswitch_3
    sget-object p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$BiometricPromptAuthentication;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$BiometricPromptAuthentication;

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;->ENROLL_ENROLLING:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;-><init>(Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;)V

    goto :goto_0

    :pswitch_5
    new-instance p0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;

    sget-object v0, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;->ENROLL_FIND_SENSOR:Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;

    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsAuthentication;-><init>(Lcom/android/systemui/biometrics/shared/model/AuthenticationReason$SettingsOperations;)V

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
