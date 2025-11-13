.class public Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "FactoryDataResetPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mHost:Lcom/android/settings/dashboard/DashboardFragment;

.field private mNewPassword:Ljava/lang/String;

.field private mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    sget-object p1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 44
    iput-object p2, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mHost:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method

.method private queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    const-string v0, "FactoryDataResetPasswordPreferenceController"

    .line 94
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.security.Password"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, ".title"

    .line 96
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".subject"

    .line 97
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".password"

    .line 98
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, ".from"

    const-string p2, "FromOtherSecurity"

    .line 99
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mHost:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {p1, v1, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NullPointerException"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->iris_try_again:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    const-string p0, "ActivityNotFoundException"

    .line 102
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setFirstTimePhonepassword(Landroid/content/Intent;)V
    .locals 4

    .line 110
    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$1;->$SwitchMap$com$samsung$android$settings$security$FactoryDataResetPasswordPreferenceController$PWState:[I

    iget-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    const-string v3, "MasterClear"

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 126
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 127
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->new_password:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->masked_star_chars:I

    .line 128
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_1
    sget-object p1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 121
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "2new phone password = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    const-string v0, "SYSTEM_PHONE_PASSWORD"

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    const-string v0, ".password"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    .line 113
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "1new phone password = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    sget-object p1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CONFIRM:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object p1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 115
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->password:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->confirm_password:I

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mNewPassword:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private startPassword()V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "SYSTEM_PHONE_PASSWORD"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    sget-object v0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->NEW:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v0, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->phone_password_settings_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->new_password:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->masked_star_chars:I

    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x64

    .line 83
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 86
    :cond_0
    sget-object v1, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;->CURRENT:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    iput-object v1, p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->mPWState:Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController$PWState;

    .line 87
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->phone_password_settings_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->confirm_old_password:I

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x66

    .line 87
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->queryPhonepassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "factory_data_reset_password_category"

    .line 64
    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->removePreference(Landroidx/preference/PreferenceScreen;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "factory_data_reset_password"

    return-object p0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_2

    .line 140
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->setFirstTimePhonepassword(Landroid/content/Intent;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->startPassword()V

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 49
    sget p0, Lcom/samsung/android/settings/security/FactoryDataResetPasswordPreferenceController;->MY_USER_ID:I

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 52
    :cond_0
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->FEATURE_FACTORY_DATA_RESET_PASSWORD:Z

    return p0
.end method
