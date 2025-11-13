.class public Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;
.source "DefaultWorkAutofillPreferenceController.java"


# instance fields
.field private mAutofillManager:Landroid/view/autofill/AutofillManager;

.field private mNewUserAwareContext:Landroid/content/Context;

.field private mProfileUserId:I

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mProfileUserId:I

    .line 45
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mNewUserAwareContext:Landroid/content/Context;

    .line 46
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    goto :goto_0

    .line 48
    :cond_0
    const-class v0, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/autofill/AutofillManager;

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    :goto_0
    return-void
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 80
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "autofill_service"

    .line 77
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 85
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 86
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    :cond_1
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "default_autofill_work"

    return-object p0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 97
    :cond_0
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 99
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/settingslib/applications/DefaultAppInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    if-eqz v0, :cond_1

    .line 60
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mAutofillManager:Landroid/view/autofill/AutofillManager;

    .line 61
    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultWorkAutofillPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
