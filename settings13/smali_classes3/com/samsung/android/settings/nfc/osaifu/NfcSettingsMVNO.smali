.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsMVNO.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroidx/preference/PreferenceScreen;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcLock:Landroidx/preference/SecPreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private mRwP2p:Landroidx/preference/SecSwitchPreference;

.field private mTapAndPay:Landroidx/preference/PreferenceScreen;

.field private mUimNfcSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->refresh(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 276
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 65
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 66
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 68
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRoot:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mUimNfcSupport:Z

    .line 285
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 78
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 79
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 80
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 81
    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 82
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private refresh(I)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh - clfLockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NfcSettingsMVNO]"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->updateNfcLock(I)V

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->updateRwP2p(I)V

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->updateLockNumChange()V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->updateTapAndPay(I)V

    return-void
.end method

.method private updateLockNumChange()V
    .locals 2

    .line 214
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/sec_efs/FeliCaLock/02"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "[NfcSettingsMVNO]"

    const-string v1, "File Exception!"

    .line 224
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateNfcLock(I)V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 143
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    goto :goto_0

    .line 145
    :cond_1
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    const/4 v1, 0x1

    :goto_0
    if-eqz p1, :cond_2

    .line 150
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method private updateRwP2p(I)V
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    .line 167
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 168
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mContext:Landroid/content/Context;

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

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v2, "isNFCStateChangeAllowed"

    .line 173
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

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 177
    :try_start_1
    invoke-virtual {v2}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 180
    throw p0

    :cond_1
    :goto_1
    move v2, v1

    :goto_2
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_2
    const/4 p1, 0x3

    const/4 v3, 0x5

    if-nez v2, :cond_4

    .line 189
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const-string v0, "[NfcSettingsMVNO]"

    if-ne p0, v3, :cond_3

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    .line 193
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    if-ne p0, p1, :cond_7

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    .line 195
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 198
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 200
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 203
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    if-ne v2, p1, :cond_7

    .line 207
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateTapAndPay(I)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 235
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 237
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsMVNO]"

    const-string v1, "onCreate"

    .line 86
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mContext:Landroid/content/Context;

    .line 89
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    .line 91
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.sec.android.intent.action.NFC_POLICY_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsMVNO]"

    const-string v1, "onPause"

    .line 115
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 244
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 248
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string p1, "[NfcSettingsMVNO]"

    const-string v2, "onPreferenceChange - RW P2P switch"

    .line 250
    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.STATE_ON : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcAdapter.SEM_STATE_CARD_MODE_ON : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "desiredState : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2523

    const/16 v2, 0x2522

    if-eqz p2, :cond_0

    .line 258
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-ne v0, v4, :cond_1

    .line 259
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 261
    invoke-static {v2, p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-ne v0, v3, :cond_1

    .line 265
    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    const/4 v0, 0x0

    .line 266
    invoke-static {v2, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 270
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return v1
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsMVNO]"

    const-string v1, "onResume"

    .line 101
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result p1

    .line 106
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->refresh(I)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
