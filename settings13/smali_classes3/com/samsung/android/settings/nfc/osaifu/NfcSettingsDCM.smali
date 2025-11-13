.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsDCM.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mBeamDisallowedBySystem:Z

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcLock:Landroidx/preference/SecPreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroidx/preference/SecSwitchPreference;

.field private mTapAndPay:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->refresh(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 59
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 60
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 287
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 66
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 67
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 68
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    const-string p3, "no_outgoing_beam"

    invoke-static {p1, p3, p2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mBeamDisallowedBySystem:Z

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mBeamDisallowedBySystem = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mBeamDisallowedBySystem:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[NfcSettingsDCM]"

    invoke-static {p1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private refresh(II)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh - clfLockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uimLockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NfcSettingsDCM]"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateNfcLock(II)V

    .line 118
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateRwP2p(I)V

    .line 119
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->updateTapAndPay(I)V

    return-void
.end method

.method private updateNfcLock(II)V
    .locals 2

    .line 123
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x100

    if-ne p1, v0, :cond_1

    if-ne p2, v0, :cond_1

    .line 130
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_off:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x2

    if-gt v1, p2, :cond_3

    if-gt p2, v0, :cond_3

    if-gt v1, p1, :cond_2

    if-gt p1, v0, :cond_2

    .line 137
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_remote_on_clf_uim:I

    goto :goto_0

    .line 140
    :cond_2
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_remote_on_uim:I

    goto :goto_0

    :cond_3
    if-gt v1, p1, :cond_4

    if-gt p1, v0, :cond_4

    .line 147
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_remote_on_clf:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    if-ne p2, v0, :cond_5

    .line 156
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_on_clf_uim:I

    goto :goto_0

    .line 159
    :cond_5
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_on_clf:I

    goto :goto_0

    :cond_6
    if-ne p2, v0, :cond_7

    .line 166
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_on_uim:I

    goto :goto_0

    .line 169
    :cond_7
    sget p1, Lcom/android/settings/R$string;->nfc_osaifukeitai_summary_off:I

    :goto_0
    if-eqz p1, :cond_8

    .line 177
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_8
    return-void
.end method

.method private updateRwP2p(I)V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    .line 194
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "isNFCStateChangeAllowed"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v2, "isNFCStateChangeAllowed"

    .line 200
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr v2, v1

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 204
    :try_start_1
    invoke-virtual {v2}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    throw p0

    :cond_1
    :goto_1
    move v2, v1

    :goto_2
    const/4 v0, 0x0

    if-gt v1, p1, :cond_2

    const/4 v3, 0x3

    if-gt p1, v3, :cond_2

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 214
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_2
    const/16 p1, 0xb

    const/16 v3, 0xd

    if-nez v2, :cond_4

    .line 216
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 218
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result p0

    const-string v0, "[NfcSettingsDCM]"

    if-ne p0, p1, :cond_3

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    .line 221
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    if-ne p0, v3, :cond_6

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    .line 223
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 226
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 228
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 231
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    if-ne v2, p1, :cond_6

    .line 233
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updateTapAndPay(I)V
    .locals 2

    .line 240
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gt v0, p1, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    const/4 p1, 0x0

    .line 245
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsDCM]"

    const-string v1, "onCreate"

    .line 74
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    .line 77
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    .line 78
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.sec.android.intent.action.EF_LOCK_UPDATED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.sec.android.intent.action.EF_LOCK_UPDATED_INTERNAL"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsDCM]"

    const-string v1, "onPause"

    .line 105
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 253
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 255
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string p1, "[NfcSettingsDCM]"

    const-string v1, "onPreferenceChange - RW P2P switch"

    .line 257
    invoke-static {p1, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2523

    const/16 v1, 0x2522

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 260
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 261
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v2

    .line 262
    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 266
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v3

    .line 267
    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    move v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 272
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return v0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsDCM]"

    const-string v1, "onResume"

    .line 89
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->refresh(II)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
