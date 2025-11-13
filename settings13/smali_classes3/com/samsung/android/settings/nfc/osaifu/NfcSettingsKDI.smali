.class public Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;
.super Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.source "NfcSettingsKDI.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLockNumChange:Landroidx/preference/PreferenceScreen;

.field private mLockNumInit:Landroidx/preference/PreferenceScreen;

.field private mNfcLock:Landroidx/preference/SecPreferenceScreen;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mRwP2p:Landroidx/preference/SecSwitchPreference;

.field private mTapAndPay:Landroidx/preference/PreferenceScreen;

.field private mUimNfcSupport:Z


# direct methods
.method static bridge synthetic -$$Nest$mrefresh(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 323
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;-><init>()V

    const/4 p1, 0x0

    .line 58
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 60
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    .line 332
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI$2;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 69
    iput-object p3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 70
    iput-object p4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 71
    iput-object p5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    .line 72
    iput-object p6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method private refresh()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getCLFLockState()I

    move-result v0

    .line 116
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getUIMLockState()I

    move-result v1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh - clfLockState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uimLockState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[NfcSettingsKDI]"

    invoke-static {v3, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkUIMSupport()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    .line 122
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateNfcLock(II)V

    .line 123
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateRwP2p(II)V

    .line 124
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumChange(I)V

    .line 125
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateLockNumInit(I)V

    .line 126
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->updateTapAndPay(II)V

    return-void
.end method

.method private updateLockNumChange(I)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x40

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-gt p0, p1, :cond_1

    const/4 p0, 0x3

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 264
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 262
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateLockNumInit(I)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    iget-boolean p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x40

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-gt p0, p1, :cond_1

    const/4 p0, 0x3

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 277
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    .line 275
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method

.method private updateNfcLock(II)V
    .locals 6

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x40

    const/4 v2, 0x0

    if-ne p2, v1, :cond_1

    .line 138
    sget v3, Lcom/android/settings/R$string;->nfc_uim_checking:I

    :goto_0
    move v4, v2

    goto :goto_1

    .line 139
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-nez v3, :cond_5

    .line 140
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->checkSimMno()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_2

    .line 142
    sget v3, Lcom/android/settings/R$string;->nfc_uim_not_supported:I

    goto :goto_0

    .line 144
    :cond_2
    sget v3, Lcom/android/settings/R$string;->nfc_uim_not_supported_locked:I

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    .line 148
    sget v3, Lcom/android/settings/R$string;->nfc_uim_mno_unmatched:I

    goto :goto_0

    .line 150
    :cond_4
    sget v3, Lcom/android/settings/R$string;->nfc_uim_mno_unmatched_locked:I

    goto :goto_0

    :cond_5
    const/16 v3, 0x100

    if-ne p1, v3, :cond_6

    if-ne p2, v3, :cond_6

    .line 154
    sget v3, Lcom/android/settings/R$string;->switch_off_text:I

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 157
    sget v3, Lcom/android/settings/R$string;->switch_off_text:I

    goto :goto_0

    .line 159
    :cond_7
    sget v3, Lcom/android/settings/R$string;->switch_on_text:I

    move v4, v0

    :goto_1
    if-eqz v3, :cond_8

    .line 165
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 166
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_8
    if-eq p2, v1, :cond_b

    .line 169
    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mUimNfcSupport:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x3

    const/4 v3, 0x2

    if-gt v3, p2, :cond_9

    if-gt p2, v1, :cond_9

    goto :goto_2

    :cond_9
    if-gt v3, p1, :cond_a

    if-gt p1, v1, :cond_a

    .line 174
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 176
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 171
    :cond_b
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_3
    return-void
.end method

.method private updateRwP2p(II)V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "content://com.sec.knox.provider2/MiscPolicy"

    .line 194
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

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
    const/4 v0, 0x3

    const/4 v3, 0x0

    if-gt v1, p1, :cond_2

    if-gt p1, v0, :cond_2

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_2
    const/16 v4, 0xd

    const/16 v5, 0xb

    if-nez v2, :cond_4

    .line 216
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 217
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result p1

    const-string v1, "[NfcSettingsKDI]"

    if-ne p1, v5, :cond_3

    const-string p1, "EDM : NFC policy changed. R/W, P2P function can\'t be enabled"

    .line 220
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    sget p1, Lcom/android/settings/R$string;->switch_off_text:I

    goto :goto_5

    :cond_3
    if-ne p1, v4, :cond_9

    const-string p1, "EDM : NFC policy changed. R/W, P2P function can\'t be changed"

    .line 223
    invoke-static {v1, p1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    goto :goto_5

    :cond_4
    const/16 v2, 0x40

    if-ne p2, v2, :cond_5

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 229
    sget p1, Lcom/android/settings/R$string;->nfc_uim_checking:I

    goto :goto_5

    :cond_5
    if-nez p1, :cond_8

    if-nez p2, :cond_8

    .line 231
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {p1}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result p1

    .line 233
    sget v2, Lcom/android/settings/R$string;->readerwriter_p2p_explained:I

    if-ne p1, v4, :cond_6

    .line 236
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_3

    :cond_6
    if-ne p1, v5, :cond_7

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_7
    :goto_3
    move p1, v2

    goto :goto_5

    .line 241
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_9
    :goto_4
    move p1, v3

    :goto_5
    if-eqz p1, :cond_a

    .line 246
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_a
    const/4 p1, 0x2

    if-gt p1, p2, :cond_b

    if-gt p2, v0, :cond_b

    .line 250
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    return-void
.end method

.method private updateTapAndPay(II)V
    .locals 2

    .line 282
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x40

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 287
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    .line 289
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 291
    :cond_2
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onCreate"

    .line 77
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    .line 80
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    .line 82
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.felicanetworks.nfc.action.ADAPTER_RW_P2P_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "com.sec.android.intent.action.NFC_POLICY_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onPause"

    .line 105
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 298
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const-string p1, "[NfcSettingsKDI]"

    const-string v1, "onPreferenceChange - RW P2P switch"

    .line 302
    invoke-static {p1, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x2523

    const/16 v1, 0x2522

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 305
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_1

    .line 306
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v2

    .line 307
    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->getRWP2pStatus()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    .line 311
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setRWP2pStatus(Z)Z

    move-result v3

    .line 312
    invoke-static {v1, p1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIZ)V

    move v2, v3

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2
    return v0
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const-string v0, "[NfcSettingsKDI]"

    const-string v1, "onResume"

    .line 92
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->refresh()V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_0

    .line 99
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    return-void
.end method
