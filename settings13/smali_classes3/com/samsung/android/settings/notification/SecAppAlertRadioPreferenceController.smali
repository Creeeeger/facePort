.class public Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;
.super Lcom/android/settings/notification/app/NotificationPreferenceController;
.source "SecAppAlertRadioPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/android/settings/notification/app/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    .line 51
    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    const-string p2, "vibrator"

    .line 52
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "app_alert_importance"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 74
    invoke-super {p0}, Lcom/android/settings/notification/app/NotificationPreferenceController;->isAvailable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 87
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v0, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 89
    iget p2, p2, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 90
    iget-object v1, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v1, v0, p2}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange alerts enabled :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrefControllerMixin"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v3, 0x1

    xor-int/2addr v1, v3

    invoke-virtual {v2, v0, p2, v1}, Lcom/android/settings/notification/NotificationBackend;->setNotificationAlertsEnabledForPackage(Ljava/lang/String;IZ)V

    if-eqz p1, :cond_0

    .line 94
    iget-object p2, p0, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;->mDependentFieldListener:Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;

    invoke-virtual {p2}, Lcom/android/settings/notification/app/NotificationSettings$DependentFieldListener;->onFieldValueChanged()V

    :cond_0
    if-eqz p1, :cond_1

    .line 98
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object p0, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";sound"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "setting"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p0, 0x8cb8

    .line 100
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "NSTE0024"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v3
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mAppRow:Lcom/android/settings/notification/NotificationBackend$AppRow;

    if-eqz v0, :cond_0

    .line 58
    iget-object v1, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->pkg:Ljava/lang/String;

    .line 59
    iget v0, v0, Lcom/android/settings/notification/NotificationBackend$AppRow;->uid:I

    .line 60
    iget-object v2, p0, Lcom/android/settings/notification/app/NotificationPreferenceController;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/notification/NotificationBackend;->getNotificationAlertsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState alerts enabled :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefControllerMixin"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    check-cast p1, Lcom/samsung/android/settings/notification/SecRadioPreference;

    .line 63
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setChecked(Z)V

    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/notification/SecRadioPreference;->setRadioColor(Z)V

    .line 66
    iget-object p0, p0, Lcom/samsung/android/settings/notification/SecAppAlertRadioPreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-nez p0, :cond_0

    .line 67
    sget p0, Lcom/android/settings/R$string;->sec_app_notification_importance_radio_alert_allow_sound_title:I

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(I)V

    :cond_0
    return-void
.end method
