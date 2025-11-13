.class public Lcom/samsung/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;,
        Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;
    }
.end annotation


# static fields
.field private static isGpFelicaSupported:Z

.field private static final isJapanKDIModel:Z

.field private static mIconType:Ljava/lang/String;


# instance fields
.field private isAndroidBeamAllowed:I

.field private isNFCStateChangeAllowed:I

.field private mAlert:Landroid/app/AlertDialog;

.field private mBeamDisallowedBySystem:Z

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsDexMode:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlert(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNfcAdapter(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsDexMode(Lcom/samsung/android/settings/nfc/NfcEnabler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNfcSecureNfcChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcSecureNfcChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNfcStateABeamChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleNfcStateChanged(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 90
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isVzwModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Vzw"

    goto :goto_0

    :cond_0
    const-string v0, "Default"

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIModel()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isJapanKDIModel:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V
    .locals 2

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 125
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 267
    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetcontext(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    return-void

    .line 273
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref-IA;)V

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    .line 274
    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetConnectionsSettingToggle(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecSwitchPreferenceScreen;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetNfcSettingToggle(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetStandardMode(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetCardMode(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetAndroidBeam(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetPaymentSim(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgettapPay(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecPreferenceScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetscreenPref(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/PreferenceScreen;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ScreenPref:Landroidx/preference/PreferenceScreen;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NfcEnabler is created. NfcSettingPref = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fputNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;Landroidx/preference/SecSwitchPreference;)V

    .line 292
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    .line 295
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_3

    .line 299
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.nfc.action.ABEAM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v0, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    sget-object v0, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isDexModeOn()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    .line 309
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "no_outgoing_beam"

    .line 309
    invoke-static {p1, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    .line 312
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    .line 313
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 316
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;Lcom/samsung/android/settings/nfc/NfcEnabler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler$Builder;)V

    return-void
.end method

.method private checkKnox()V
    .locals 4

    const-string v0, "false"

    .line 925
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 927
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider2/MiscPolicy"

    const-string v3, "isNFCStateChangeAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    .line 930
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v3, "isAndroidBeamAllowed"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNFCStateChangeAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , isAndroidBeamAllowed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    const/4 v2, 0x0

    if-nez v0, :cond_3

    const-string v0, "EDM : NFC state change not allowed."

    .line 936
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_0

    .line 938
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 942
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 945
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 946
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_3

    .line 950
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 954
    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isAndroidBeamAllowed:I

    if-nez v0, :cond_4

    const-string v0, "EDM : AndroidBeam not allowed."

    .line 955
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p0, :cond_4

    .line 957
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method private getBeamShareActivityState()Z
    .locals 5

    .line 847
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.nfc"

    const-string v2, "com.android.nfc.BeamShareActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 850
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android"

    new-instance v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 851
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    return v0

    .line 857
    :catch_0
    sget-boolean p0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p0, :cond_1

    const-string p0, "NfcEnabler"

    const-string v0, "Failed to retrieve PackageManager for user"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private handleNfcSecureNfcChanged()V
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureNfcEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 828
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 829
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 830
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x2

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    .line 833
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 834
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 835
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 837
    :cond_3
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eq v0, v3, :cond_4

    .line 838
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 839
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 840
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 841
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method private handleNfcStateABeamChanged()V
    .locals 2

    .line 809
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 810
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beamshare state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 813
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getBeamShareActivityState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-nez v0, :cond_2

    .line 814
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 815
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 817
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 818
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleNfcStateChanged(I)V
    .locals 7

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNfcStateChanged. newState is = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GATE"

    const-string v1, "VZW"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v3, :cond_28

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1f

    const/4 v5, 0x3

    const-string v6, "no_outgoing_beam"

    if-eq p1, v5, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_6

    .line 759
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_1

    .line 760
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 761
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_2

    .line 764
    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 766
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_4

    .line 767
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v0, :cond_3

    .line 768
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 770
    :cond_3
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 772
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 774
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_5

    .line 775
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 776
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 778
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_6

    .line 779
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 780
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 782
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_7

    .line 783
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 784
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 785
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 786
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->nfc_card_mode_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 789
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_35

    .line 790
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isOffSlot(I)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isOffSlot(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 791
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 793
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 724
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_a

    .line 725
    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 726
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 728
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_b

    .line 729
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 731
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_c

    .line 732
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 734
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_d

    .line 735
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 736
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 738
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_e

    .line 739
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 740
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 742
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_10

    .line 743
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 744
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 745
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_f

    .line 746
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 748
    :cond_f
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 749
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->nfc_standard_mode_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 753
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_35

    .line 754
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 614
    :cond_11
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_12

    .line 615
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 616
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 618
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_15

    .line 620
    iget-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIsDexMode:Z

    if-eqz v5, :cond_13

    .line 621
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 624
    :cond_13
    iget-boolean v5, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mBeamDisallowedBySystem:Z

    if-eqz v5, :cond_14

    .line 625
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 626
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1

    .line 628
    :cond_14
    invoke-virtual {p1, v6}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 633
    :cond_15
    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    .line 634
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_16

    const-string p1, "<GATE-M>NFC_ON</GATE-M>"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_16
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_18

    .line 640
    sget-object p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 641
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ScreenPref:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_17

    .line 642
    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 645
    :cond_17
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 646
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 649
    :cond_18
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_19

    .line 650
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 651
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 653
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_1a

    .line 654
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 657
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_1c

    .line 658
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 659
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 660
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_1b

    .line 661
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 663
    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 664
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->nfc_standard_mode_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 668
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_1e

    .line 669
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isOffSlot(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isOffSlot(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 670
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 672
    :cond_1d
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 675
    :cond_1e
    :goto_2
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_35

    .line 676
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 677
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 683
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_20

    .line 684
    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 685
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 687
    :cond_20
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_21

    .line 688
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 690
    :cond_21
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_22

    .line 691
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 693
    :cond_22
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_23

    .line 694
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 695
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 697
    :cond_23
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_24

    .line 698
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 699
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 701
    :cond_24
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_27

    .line 702
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 703
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 704
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-nez p1, :cond_25

    .line 705
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 707
    :cond_25
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_27

    .line 708
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 709
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->nfc_settings_title_support_p2p:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 711
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_27

    .line 712
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 718
    :cond_27
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_35

    .line 719
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_6

    .line 544
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_29

    .line 545
    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 546
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v3}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 548
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz p1, :cond_2a

    .line 549
    invoke-virtual {p1, v4}, Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    .line 552
    :cond_2a
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 553
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_2b

    const-string p1, "<GATE-M>NFC_OFF</GATE-M>"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_2b
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    if-eqz p1, :cond_2d

    .line 559
    sget-object p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 560
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ScreenPref:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_2d

    .line 561
    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_4

    .line 565
    :cond_2c
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->TapPay:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 569
    :cond_2d
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_2e

    .line 570
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 571
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 573
    :cond_2e
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz p1, :cond_2f

    .line 574
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 575
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 577
    :cond_2f
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_31

    .line 578
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 579
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 581
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_30

    .line 582
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 583
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    sget v0, Lcom/android/settings/R$string;->nfc_settings_title_support_p2p:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 586
    :cond_30
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 587
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 591
    :cond_31
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->PaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz p1, :cond_32

    .line 592
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 595
    :cond_32
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_35

    .line 596
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 597
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 598
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 600
    :cond_33
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result p1

    if-eqz p1, :cond_35

    .line 601
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p1, :cond_34

    .line 602
    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 605
    :cond_34
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_35

    .line 606
    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 607
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, v4}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 803
    :cond_35
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->checkKnox()V

    return-void
.end method

.method private isDexModeOn()Z
    .locals 1

    .line 999
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v0, "desktopmode"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1006
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isNfcTurnOn()Z
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 965
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 966
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private makeAlertDialog(Ljava/lang/String;)V
    .locals 3

    .line 865
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "NfcSettingsOff"

    .line 867
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ConnectionsNfcSettingsOff"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "AndroidBeamOff"

    .line 870
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 871
    sget v1, Lcom/android/settings/R$string;->androidbeam_off_popup_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 872
    sget v1, Lcom/android/settings/R$string;->limit_app_contents_transfer:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    const-string v1, "RwOff"

    .line 873
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 874
    sget v1, Lcom/android/settings/R$string;->guide_dialog_attention_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 875
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    sget v1, Lcom/android/settings/R$string;->nfc_settings_tag_message_support_p2p:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 878
    :cond_2
    sget v1, Lcom/android/settings/R$string;->nfc_settings_tag_message:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 868
    :cond_3
    :goto_0
    sget v1, Lcom/android/settings/R$string;->nfc_off_popup_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 869
    sget v1, Lcom/android/settings/R$string;->cannot_use_card_without_NFC:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :cond_4
    :goto_1
    const v1, 0x104000a

    .line 882
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcEnabler$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$2;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/high16 p1, 0x1040000

    .line 904
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcEnabler$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$3;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 912
    new-instance p1, Lcom/samsung/android/settings/nfc/NfcEnabler$4;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$4;-><init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 919
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mAlert:Landroid/app/AlertDialog;

    .line 920
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getCLFLockState()I
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    const-string p0, "result = "

    const-string v0, "NfcEnabler"

    const/16 v1, 0x100

    .line 978
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    const-string v3, "/efs/sec_efs/FeliCaLock/01"

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 979
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v3, :cond_1

    const/4 v4, 0x3

    if-ge v4, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 984
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v3

    .line 978
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string v2, "IOException! "

    .line 989
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    const-string v1, "FileNotFoundException!"

    .line 985
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 987
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isOffSlot(I)Z
    .locals 8

    .line 1015
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "phone1_on"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1017
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "phone2_on"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    const-string v3, "ril.ICC_TYPE0"

    const-string v4, "0"

    .line 1019
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ril.ICC_TYPE1"

    .line 1020
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simState1 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", simState2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "NfcEnabler"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    if-eqz v0, :cond_2

    .line 1025
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_2
    return v2

    :cond_3
    if-ne p1, v2, :cond_5

    if-eqz p0, :cond_4

    .line 1028
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    :cond_4
    return v2

    :cond_5
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1d
    .end annotation

    .line 462
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 464
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xe42

    const-string v3, "NfcEnabler"

    const/4 v4, 0x0

    if-eqz v0, :cond_8

    .line 467
    iget p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNFCStateChangeAllowed:I

    if-nez p1, :cond_0

    const-string p0, "EDM : NFC state change not allowed. so can\'t change toggle button"

    .line 468
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/16 p1, 0xc8e

    if-eqz p2, :cond_4

    .line 475
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result v0

    if-eqz v0, :cond_1

    return v4

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 479
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 480
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 484
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 485
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 487
    :cond_3
    invoke-static {v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_2

    .line 488
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDomesticUi()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "ConnectionsNfcSettingsOff"

    .line 489
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 491
    :cond_5
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 496
    sget-boolean v0, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 497
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 498
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 500
    :cond_7
    invoke-static {v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto/16 :goto_2

    .line 502
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p1, 0x1b69

    if-eqz p2, :cond_9

    .line 506
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    move-result v4

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v3, Lcom/android/settings/R$string;->switch_on_text:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 508
    invoke-static {v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 509
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDomesticUi()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "AndroidBeamOff"

    .line 510
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    move-result v4

    .line 513
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    sget v3, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 514
    invoke-static {v2, p1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_0
    if-eqz v4, :cond_e

    .line 518
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 520
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 522
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    if-eqz p1, :cond_c

    const-string p1, "onPreferenceChange - mSecureNfcSwitchPref switch"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz p2, :cond_d

    const-string p1, "secure nfc on"

    .line 525
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p1

    goto :goto_1

    :cond_d
    const-string p1, "secure nfc off"

    .line 528
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, v4}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_e

    .line 533
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_e
    :goto_2
    return v1
.end method

.method public onRadioButtonClicked(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V
    .locals 4

    .line 430
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 431
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 434
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->announceForAccessibility()V

    .line 435
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string p1, "RwOff"

    .line 437
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 440
    invoke-virtual {v1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 441
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 442
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->announceForAccessibility()V

    .line 444
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 p1, 0xe42

    const/16 v0, 0x1b67

    const-wide/16 v1, 0x0

    .line 445
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 446
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 447
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 381
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcSettings;->DBG:Z

    const-string v0, "NfcEnabler"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged, desiredState is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "emergency mode on. so can\'t control nfc state"

    .line 384
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->isNfcTurnOn()Z

    move-result p1

    if-ne p1, p2, :cond_2

    return-void

    .line 390
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 391
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 393
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    const/16 v1, 0xe43

    const/16 v2, 0xe42

    if-eqz p2, :cond_7

    if-eqz p1, :cond_4

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->getCLFLockState()I

    move-result p1

    if-eqz p1, :cond_4

    .line 397
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p1, p1, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_4

    .line 398
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void

    .line 402
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 403
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 404
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 406
    :cond_5
    sget-boolean p1, Lcom/samsung/android/settings/nfc/NfcEnabler;->isGpFelicaSupported:Z

    if-eqz p1, :cond_6

    .line 407
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 408
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 409
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 412
    :cond_6
    invoke-static {v2, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 413
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportDomesticUi()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "NfcSettingsOff"

    .line 414
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_8
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isSupportCardModeUi()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportAndroidBeam(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 417
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 419
    :cond_9
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 420
    invoke-static {v2, v1, p2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 356
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 360
    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 365
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 368
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz p0, :cond_4

    .line 369
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    return-void
.end method

.method public resume()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 324
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcStateABeamChanged()V

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->NfcSettingToggle:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz v0, :cond_1

    .line 328
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v1, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->CardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v1, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->StandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;->setOnClickListener(Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference$OnClickListener;)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->AndroidBeam:Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_3

    .line 337
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->-$$Nest$fgetNfcJapanPreferenceSecureNfc(Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;)Landroidx/preference/SecSwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 342
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->handleNfcSecureNfcChanged()V

    .line 345
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler;->mNfcSettingPref:Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcEnabler$NfcSettingPref;->ConnectionsSettingToggle:Landroidx/preference/SecSwitchPreferenceScreen;

    if-eqz v0, :cond_5

    .line 346
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    return-void
.end method
