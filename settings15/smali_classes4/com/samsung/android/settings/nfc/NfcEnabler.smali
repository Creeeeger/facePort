.class public final Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field public static isGpFelicaSupported:Z


# instance fields
.field public isNFCStateChangeAllowed:I

.field public final mContentObserver:Lcom/samsung/android/settings/nfc/NfcEnabler$2;

.field public final mContext:Landroid/content/Context;

.field public final mIntentFilter:Landroid/content/IntentFilter;

.field public final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field public final mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

.field public final mReceiver:Lcom/samsung/android/settings/nfc/NfcEnabler$1;

.field public final mSwitchNfcModeFilter:Landroid/content/IntentFilter;

.field public final roleManager:Landroid/app/role/RoleManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContentObserver:Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    iget-object v0, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-direct {v2, v0}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->tapPay:Landroidx/preference/SecPreference;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->otherService:Landroidx/preference/SecPreferenceScreen;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->OtherService:Landroidx/preference/SecPreferenceScreen;

    iget-object v3, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->screenPref:Landroidx/preference/PreferenceScreen;

    iput-object v3, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ScreenPref:Landroidx/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NfcEnabler is created. NfcSettingPref = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NfcEnabler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v3, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    iput-object p1, v2, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    :cond_1
    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->roleManager:Landroid/app/role/RoleManager;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.app.action.SWITCH_NFC_MODE_NOTIFICATION"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchNfcModeFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    :goto_0
    return-void
.end method

.method public static getCLFLockState()I
    .locals 6

    const-string/jumbo v0, "result = "

    const-string v1, "NfcEnabler"

    const/16 v2, 0x100

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v4, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v4, :cond_1

    const/4 v5, 0x3

    if-ge v5, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v3, "IOException! "

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string v2, "FileNotFoundException!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "result = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_2
    invoke-static {v2, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final handleNfcSecureNfcChanged()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SecureNfcEnabled : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eq v0, v3, :cond_4

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final handleNfcStateChanged(I)V
    .locals 8

    const-string v0, "handleNfcStateChanged. newState is = "

    const-string v1, "NfcEnabler"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1419ec

    const-string v2, "GATE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v4, :cond_13

    const/4 v6, 0x2

    const v7, 0x7f1419d4

    if-eq p1, v6, :cond_e

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;->updateNfcSettingToggle(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0, v4, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->updateNfcSettingToggle(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->OtherService:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isReaderOptionSupported()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_5

    const-string p1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v4}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    const v0, 0x7f1419d5

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->initSubscriptionDetails()V

    :cond_a
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_d

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->initSubscriptionDetails()V

    goto/16 :goto_3

    :cond_e
    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;->updateNfcSettingToggle(ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_f

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v7}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_10
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_12

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_12
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_1b

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->updateNfcSettingToggle(ZZ)V

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_14

    const-string p1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_15

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_15
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_17

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_16
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v5}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    :cond_17
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_18
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_19

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_19
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result p1

    if-eqz p1, :cond_1b

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_1a

    invoke-virtual {p1, v5}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1a
    invoke-virtual {p0, v5, v5}, Lcom/samsung/android/settings/nfc/NfcEnabler;->updateNfcSettingToggle(ZZ)V

    :cond_1b
    :goto_3
    const-string p1, "false"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v3, "isNFCStateChangeAllowed"

    invoke-static {v0, v2, v3, p1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "isNFCStateChangeAllowed = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-static {p1, v0, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez p1, :cond_1e

    const-string p1, "EDM : NFC state change not allowed."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1c

    invoke-virtual {p1, v5}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_1d

    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, v5}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1e
    return-void
.end method

.method public final isNfcStateChangeAllowed()Z
    .locals 8

    const-string/jumbo v0, "satellite_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "NfcEnabler"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v0, "satellite mode key does not exist in Settings"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "false"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v5, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v6, "isNFCStateChangeAllowed"

    invoke-static {p0, v5, v6, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_1

    :cond_2
    move p0, v4

    :goto_1
    sget-boolean v1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    const-string/jumbo v5, "satelliteMode = "

    const-string v6, " knoxNfcStateChangeAllowed = "

    const-string v7, " felicaRemoteLock = "

    invoke-static {v5, v0, v6, p0, v7}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz p0, :cond_4

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    :goto_3
    return v3
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    const-string v0, "NfcEnabler"

    if-eqz p1, :cond_0

    const-string/jumbo p1, "onSwitchChanged, desiredState is "

    invoke-static {p1, v0, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "emergency mode on. so can\'t control nfc state"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-ne p1, p2, :cond_4

    return-void

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    const/16 v0, 0xe43

    const/16 v3, 0xe42

    if-eqz p2, :cond_8

    if-eqz p1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    invoke-static {v3, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_2

    :cond_8
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    invoke-static {v3, v0, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_2
    return-void
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreferenceChange"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0xe42

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez p1, :cond_0

    const-string p0, "EDM : NFC state change not allowed. so can\'t change toggle button"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/16 p1, 0xc8e

    if-eqz p2, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result v0

    if-eqz v0, :cond_1

    return v4

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    invoke-static {v3, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_2

    :cond_3
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    const/16 p0, 0xbbd

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    invoke-static {v3, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x1

    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isReaderOptionEnabled()Z

    move-result p1

    const/16 p2, 0x1b67

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const v0, 0x7f1419d6

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v4}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    invoke-static {v3, p2, v7, v8}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_0

    :cond_7
    invoke-static {v3, p2, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v2}, Landroid/nfc/NfcAdapter;->enableReaderOption(Z)Z

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    const p1, 0x7f1419d4

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_9

    const-string/jumbo p1, "onPreferenceChange - mSecureNfcSwitchPref switch"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-eqz p2, :cond_a

    const-string/jumbo p1, "secure nfc on"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v2}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p1

    goto :goto_1

    :cond_a
    const-string/jumbo p1, "secure nfc off"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v4}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p1

    :goto_1
    if-eqz p2, :cond_b

    move-wide v5, v7

    :cond_b
    const/16 v0, 0x251e

    invoke-static {v3, v0, v5, v6}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    if-eqz p1, :cond_c

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_c
    :goto_2
    return v2
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPreferenceClick called for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0xe45

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    invoke-static {p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEntranceLogging(I)V

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->walletRoleEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    const-string v0, "android.app.role.WALLET"

    invoke-virtual {p1, v0}, Landroid/app/role/RoleManager;->isRoleAvailable(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.nfc.cardemulation.action.ACTION_CHANGE_DEFAULT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string/jumbo p0, "walletRoleEnabled is false"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final pause()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContentObserver:Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    if-eqz v0, :cond_4

    const-string v0, "NfcEnabler"

    const-string v2, "Removing OnPreferenceClickListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    return-void
.end method

.method public final resume()V
    .locals 9

    const-string v0, "NfcEnabler"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mSwitchNfcModeFilter:Landroid/content/IntentFilter;

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    const-string/jumbo v1, "satellite_mode_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string/jumbo v1, "satellite mode key does not exist in Settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContentObserver:Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-virtual {v3, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ReaderMode:Landroidx/preference/SecSwitchPreference;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcJapanPreferenceSecureNfc:Landroidx/preference/SecSwitchPreference;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcSecureNfcChanged()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v1, :cond_5

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    if-eqz v1, :cond_6

    const-string v1, "Setting OnPreferenceClickListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    if-eqz v1, :cond_b

    const/4 v3, 0x1

    invoke-static {v1, v3}, Landroidx/preference/SecPreferenceUtils;->applySummaryColor(Landroidx/preference/Preference;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreference;

    const-string v3, "android.app.role.WALLET"

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const v5, 0x7f141a50

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->roleManager:Landroid/app/role/RoleManager;

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v7, Lcom/samsung/android/settings/nfc/WalletRoleUiBehavior;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Lcom/samsung/android/settings/nfc/WalletRoleUiBehavior;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2, v6, v8}, Lcom/samsung/android/settings/nfc/WalletRoleUiBehavior;->prepareApplicationPreferenceAsUser(Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Landroid/content/Context;)Landroidx/core/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->roleManager:Landroid/app/role/RoleManager;

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getDefaultApplication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x80

    :try_start_1
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, p0

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "package name not found for the given package. exception - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_3
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final updateNfcSettingToggle(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcStateChangeAllowed()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method
