.class public Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAssistPreferenceController.java"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mIntent:Landroid/content/Intent;

.field private final mPrefKey:Ljava/lang/String;

.field private final mShowSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 53
    iput-boolean p3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    .line 54
    new-instance p2, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 56
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MANAGE_DEFAULT_APP"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.ROLE_NAME"

    const-string p3, "android.app.role.ASSISTANT"

    .line 60
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 62
    iput-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mIntent:Landroid/content/Intent;

    :goto_0
    return-void
.end method


# virtual methods
.method getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 128
    new-instance p0, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object p1, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p0, p3, p1}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 130
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 123
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 4

    .line 68
    iget-boolean p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 71
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 75
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 80
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 83
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 87
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    .line 88
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "default_assist"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_assist_and_voice_input:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
