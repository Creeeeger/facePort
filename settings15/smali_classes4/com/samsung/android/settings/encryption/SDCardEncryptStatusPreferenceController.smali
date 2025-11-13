.class public Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final PREF_KEY_SDCARD_ENCRYPT_DETAIL_PAGE:Ljava/lang/String; = "sdcard_encrypt_status"

.field private static final TAG:Ljava/lang/String; = "SDCardEncryptStatusPreferenceController"


# instance fields
.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mSse:Lcom/samsung/android/security/SemSdCardEncryption;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string p2, "device_policy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    new-instance p1, Lcom/samsung/android/security/SemSdCardEncryption;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/security/SemSdCardEncryption;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    return-void
.end method

.method private isSdcardBlockedByMdm()Z
    .locals 7

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string p0, "false"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v4, "isSdCardEnabled"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "isSdCardEnabled"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "SDCardEncryptStatusPreferenceController"

    const-string v1, "SDCARD_ENABLED is false"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportBlockEncryption()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sdcard_encrypt_status"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->getCurrentStatus()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v1}, Lcom/samsung/android/security/SemSdCardEncryption;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->isSupportBlockEncryption()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f14206d

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f14206a

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->isSupportBlockEncryption()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "unmountable"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getSamsungSDcardEncryptionStatus(Landroid/content/ComponentName;)Z

    move-result v1

    const v5, 0x7f14206f

    const v6, 0x7f142070

    if-eqz v1, :cond_7

    const v1, 0x7f142059

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mSse:Lcom/samsung/android/security/SemSdCardEncryption;

    invoke-virtual {v0}, Lcom/samsung/android/security/SemSdCardEncryption;->isSdCardEncryped()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f14207b

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->isSupportBlockEncryption()Z

    move-result v0

    if-eqz v0, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->isSupportBlockEncryption()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v6

    :cond_8
    invoke-virtual {p1, v5}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    :cond_9
    :goto_2
    if-nez v1, :cond_a

    const v0, 0x7f142078

    goto :goto_3

    :cond_a
    const v0, 0x7f142077

    :goto_3
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/encryption/SDCardEncryptStatusPreferenceController;->isSdcardBlockedByMdm()Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "SDCardEncryptStatusPreferenceController"

    const-string v0, "SD card was disabled by MDM policy"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_b
    const-class p0, Lcom/samsung/android/settings/encryption/CryptSDCardSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setFragment(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
