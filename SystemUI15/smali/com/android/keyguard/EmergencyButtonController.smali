.class public final Lcom/android/keyguard/EmergencyButtonController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public mBouncerShowing:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$2;

.field public mCurrentSatellitePhoneId:I

.field public mCurrentSimState:I

.field public mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public final mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mKeyguardShowing:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public mPasswordEntry:Landroid/view/View;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSatelliteRegState:I

.field private mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSatelliteSettingsValueList:[Landroid/net/Uri;

.field public mSatelliteSubId:I

.field public final mSatelliteTelephonyCallback:Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public final mSettingsValueList:[Landroid/net/Uri;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTelephonyManagerForSatellite:Landroid/telephony/TelephonyManager;


# direct methods
.method public static $r8$lambda$W1zTNNSQ2hmvDBkhwJsvlM1sA5k(Lcom/android/keyguard/EmergencyButtonController;ZZ)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    iget v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    iget-boolean v3, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    iget p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v5, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    const/4 v6, 0x5

    const-string v7, "EmergencyButton"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isOutOfService()Z

    move-result v4

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-eq p0, v8, :cond_1

    if-ne p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move p0, v9

    goto :goto_1

    :cond_1
    :goto_0
    move p0, v8

    :goto_1
    const-string/jumbo v10, "updateEmergencyCallButton isOutOfService = "

    const-string v11, " isAirplaneModeOn = "

    const-string v12, " isSatelliteRegistered = "

    invoke-static {v10, v11, v12, v4, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v10, p0, v7}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_2

    :cond_2
    move p0, v9

    move v4, p0

    move v5, v4

    :goto_2
    sget-boolean v10, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v10, :cond_3

    if-eqz v4, :cond_3

    if-nez p0, :cond_3

    if-nez v5, :cond_3

    goto/16 :goto_5

    :cond_3
    if-eqz v1, :cond_c

    if-eqz p1, :cond_4

    goto/16 :goto_3

    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo p0, "updateEmergencyCallButton : secure"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_5
    sget-boolean p0, Lcom/android/systemui/CscRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz p0, :cond_a

    const-class p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-ne v2, v8, :cond_6

    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/systemui/util/DeviceState;->isNoSimState(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p0, "SIM_STATE_ABSENT"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    iget-object p2, v0, Lcom/android/keyguard/EmergencyButton;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isEmergencyCallOnly()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "EmergencyCallOnly"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    if-ne v2, v6, :cond_8

    sget-boolean p0, Lcom/android/systemui/CscRune;->SECURITY_SKT_USIM_TEXT:Z

    if-eqz p0, :cond_8

    const-string p0, "ril.simtype"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p2, 0x13

    if-ne p2, p0, :cond_8

    const-string p0, "SKT Usim unregisterd"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "AirplaneMode On"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string p0, "Can\'t match sim state, simState : "

    invoke-static {v2, p0, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_c

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    :goto_3
    invoke-virtual {v0, v9}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    if-eqz p1, :cond_b

    const p0, 0x104075d

    goto :goto_4

    :cond_b
    const p0, 0x7f130932

    :goto_4
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setText(I)V

    goto :goto_6

    :cond_c
    :goto_5
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    :goto_6
    return-void
.end method

.method public static $r8$lambda$e6ceecPxW3wEM4fHjkBzcKaihjE(Lcom/android/keyguard/EmergencyButtonController;Z)V
    .locals 7

    const-string v0, ""

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v2, 0x0

    const-string v3, "EmergencyButton"

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "takeEmergencyCallAction - showInCallScreen(false, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/telecom/SemTelecomManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/telecom/SemTelecomManager;->showInCallScreen(ZLandroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mEmergencyButtonCallback:Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Lcom/android/keyguard/EmergencyButtonController$EmergencyButtonCallback;->onEmergencyButtonClickedWhenInCall()V

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportEmergencyCallAction()V

    sget-boolean p1, Lcom/android/systemui/CscRune;->SECURITY_DIRECT_CALL_TO_ECC:Z

    const/high16 v4, 0x14800000

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    instance-of v6, p1, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Lcom/android/keyguard/SecPasswordTextView;

    iget-object v6, v6, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    check-cast p1, Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1, v2, v2}, Lcom/android/keyguard/BaseSecPasswordTextView;->reset(ZZ)V

    goto :goto_0

    :cond_1
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    instance-of v6, p1, Landroid/widget/EditText;

    if-eqz v6, :cond_3

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_3
    move-object v6, v0

    :goto_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "tel"

    invoke-static {v0, v6, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    const-string v0, "callToEmergencyLine"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, p0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t find the component "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez p1, :cond_5

    const-string p0, "TelecomManager was null, cannot launch emergency dialer"

    invoke-static {v3, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v5}, Landroid/telecom/TelecomManager;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.android.phone.EmergencyDialer.extra.ENTRY_TYPE"

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    const-string/jumbo v4, "takeEmergencyCallAction"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButtonController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Landroid/widget/Button;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v4, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v3, v4}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v3, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v3}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "enable_ice_contact_list"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "enable_emergency_medical_info"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/shade/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/widget/LockPatternUtils;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 6

    move-object v0, p0

    move-object v1, p4

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    iput v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSimState:I

    new-instance v4, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    iput-object v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v4, v2, [Landroid/net/Uri;

    const-string v5, "airplane_mode_on"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v3

    iput-object v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsValueList:[Landroid/net/Uri;

    const/4 v4, -0x1

    iput v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSatellitePhoneId:I

    iput v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    iput v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    const-string v5, "satellite_mode_enabled"

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v2, v3

    iput-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsValueList:[Landroid/net/Uri;

    iput-object v4, v0, Lcom/android/keyguard/EmergencyButtonController;->mPasswordEntry:Landroid/view/View;

    new-instance v2, Lcom/android/keyguard/EmergencyButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyButtonController$1;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    iput-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v2, Lcom/android/keyguard/EmergencyButtonController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/EmergencyButtonController$2;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    iput-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$2;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    invoke-virtual {p4, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManagerForSatellite:Landroid/telephony/TelephonyManager;

    new-instance v1, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;

    invoke-direct {v1, p0, v3}, Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteTelephonyCallback:Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mPowerManager:Landroid/os/PowerManager;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/EmergencyButtonController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method


# virtual methods
.method public final onInit()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onViewAttached()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/EmergencyButtonController;->setEmergencyView(Landroid/view/View;)V

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/EmergencyButtonController;I)V

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    :cond_1
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSatelliteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->registerSatelliteTelephonyCallback()V

    :cond_2
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_3
    return-void
.end method

.method public final onViewDetached()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mConfigurationListener:Lcom/android/keyguard/EmergencyButtonController$2;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_EMERGENCY_BUTTON_KOR:Z

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isSatelliteModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/EmergencyButtonController;->unregisterSatelliteTelephonyCallback()V

    :cond_1
    return-void
.end method

.method public final registerSatelliteTelephonyCallback()V
    .locals 4

    const-string v0, "ril.tiantong.phone.id"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSatellitePhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    const-string v2, "EmergencyButton"

    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v1, 0x0

    aget v1, v0, v1

    goto :goto_0

    :cond_0
    const-string v0, "getSubId: no valid subs"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*** registerTelephonyCallback SatelliteSlotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSatellitePhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SatelliteSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManagerForSatellite:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteTelephonyCallback:Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public final setEmergencyView(Landroid/view/View;)V
    .locals 1

    check-cast p1, Lcom/android/keyguard/EmergencyButton;

    iput-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    new-instance v0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/EmergencyButtonController;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final unregisterSatelliteTelephonyCallback()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "*** unregisterTelephonyCallback SatelliteSlotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mCurrentSatellitePhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SatelliteSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteSubId:I

    const-string v2, "EmergencyButton"

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManagerForSatellite:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteTelephonyCallback:Lcom/android/keyguard/EmergencyButtonController$SatelliteTelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mSatelliteRegState:I

    return-void
.end method

.method public updateEmergencyCallButton()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSecure()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardShowing:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mBouncerShowing:Z

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/EmergencyButtonController;ZZI)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method
