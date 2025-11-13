.class public Lcom/android/settings/notification/app/DeepSleepingPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "DeepSleepingPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$pu-POZLJvCDTE5B8-wz6HENAVyU(Lcom/android/settings/notification/app/DeepSleepingPreferenceController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;->lambda$updateState$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 23
    iput-object p1, p0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$updateState$0(Landroid/view/View;)V
    .locals 3

    .line 45
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.sm.ACTION_OPEN_CHECKABLE_LISTACTIVITY"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "activity_type"

    const/4 v1, 0x1

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 49
    iget-object p0, p0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "deep_sleeping"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 43
    check-cast p1, Lcom/samsung/android/settings/widget/SecButtonPreference;

    .line 44
    new-instance v0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/app/DeepSleepingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/app/DeepSleepingPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v0, -0x1000000

    .line 52
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonTextColor(I)V

    .line 53
    iget-object p0, p0, Lcom/android/settings/notification/app/DeepSleepingPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_app_notification_manage_deep_sleeping_apps:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 54
    sget p0, Lcom/android/settings/R$drawable;->sec_deep_sleeping_bg:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecButtonPreference;->setButtonBackGroundResource(I)V

    return-void
.end method
