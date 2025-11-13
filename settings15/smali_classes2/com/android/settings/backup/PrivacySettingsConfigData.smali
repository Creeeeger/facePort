.class public final Lcom/android/settings/backup/PrivacySettingsConfigData;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;


# instance fields
.field public mBackupEnabled:Z

.field public mBackupGray:Z

.field public mConfigIntent:Landroid/content/Intent;

.field public mConfigSummary:Ljava/lang/String;

.field public mManageIntent:Landroid/content/Intent;

.field public mManageLabel:Ljava/lang/CharSequence;


# direct methods
.method public static getInstance()Lcom/android/settings/backup/PrivacySettingsConfigData;
    .locals 2

    sget-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/backup/PrivacySettingsConfigData;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupEnabled:Z

    iput-boolean v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mBackupGray:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mConfigSummary:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageIntent:Landroid/content/Intent;

    iput-object v1, v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->mManageLabel:Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    :cond_0
    sget-object v0, Lcom/android/settings/backup/PrivacySettingsConfigData;->sInstance:Lcom/android/settings/backup/PrivacySettingsConfigData;

    return-object v0
.end method
