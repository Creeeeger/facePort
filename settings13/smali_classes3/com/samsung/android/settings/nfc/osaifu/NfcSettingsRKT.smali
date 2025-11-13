.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsRKT.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroidx/preference/PreferenceScreen;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcLock:Landroidx/preference/SecPreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroidx/preference/SecSwitchPreference;

.field private mTapAndPay:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNfcSettingsData(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->refresh(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 273
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 63
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 64
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 282
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 73
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 74
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 75
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 76
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 77
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private refresh(I)V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh - clfLockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[NfcSettingsRKT]"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->updateNfcLock(I)V

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->updateRwP2p(I)V

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->updateLockNumChange(I)V

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->updateTapAndPay(I)V

    return-void
.end method

.method private updateLockNumChange(I)V
    .locals 1

    .line 221
    new-instance p1, Ljava/io/File;

    const-string v0, "/efs/sec_efs/FeliCaLock/02"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "[NfcSettingsRKT]"

    const-string v0, "File Exception!"

    .line 231
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateNfcLock(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 135
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    .line 136
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    .line 138
    :cond_1
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    const/4 v1, 0x0

    .line 139
    invoke-virtual {v0, v1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_0
    if-eqz p1, :cond_2

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method

.method private updateRwP2p(I)V
    .locals 7

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    .line 161
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mContext:Landroid/content/Context;

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

    .line 165
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :try_start_0
    const-string v2, "isNFCStateChangeAllowed"

    .line 167
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

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 171
    :try_start_1
    invoke-virtual {v2}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    throw p0

    :cond_1
    :goto_1
    move v2, v1

    :goto_2
    const/4 v0, 0x0

    if-ne p1, v1, :cond_2

    .line 180
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    :cond_2
    const/4 p1, 0x3

    const/4 v3, 0x5

    if-nez v2, :cond_4

    .line 183
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 184
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p0

    const-string v0, "[NfcSettingsRKT]"

    if-ne p0, v3, :cond_3

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    .line 187
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    if-ne p0, p1, :cond_7

    const-string p0, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    .line 189
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 192
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 194
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_5
    if-ne v2, v1, :cond_6

    .line 199
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    if-ne v2, p1, :cond_7

    .line 201
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateTapAndPay(I)V
    .locals 2

    .line 208
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-gt v0, p1, :cond_1

    const/4 v1, 0x3

    if-gt p1, v1, :cond_1

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsRKT]"

    const-string v1, "onCreate"

    .line 81
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsRKT]"

    const-string v1, "onPause"

    .line 109
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 240
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 244
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    const-string p1, "[NfcSettingsRKT]"

    const-string v2, "onPreferenceChange - RW P2P switch"

    .line 246
    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adapter state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mNfcAdapter.STATE_ON : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNfcAdapter.SEM_STATE_CARD_MODE_ON : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
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

    .line 254
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-ne v0, v4, :cond_1

    .line 255
    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    .line 257
    invoke-static {v2, p1, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-ne v0, v3, :cond_1

    .line 261
    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    const/4 v0, 0x0

    .line 263
    invoke-static {v2, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    .line 267
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return v1
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsRKT]"

    const-string v1, "onResume"

    .line 95
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result p1

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->refresh(I)V

    .line 103
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
