.class Lcom/android/settings/privacy/PrivacyDashboardFragment$2;
.super Lcom/samsung/android/settings/general/BaseResetSettingsData;
.source "PrivacyDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacy/PrivacyDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/settings/general/BaseResetSettingsData;-><init>()V

    return-void
.end method


# virtual methods
.method public resetSettings(Landroid/content/Context;)V
    .locals 3

    .line 173
    invoke-static {p1}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment$2;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 174
    invoke-virtual {v0, v1, v1, v2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->setSensorBlockedForProfileGroup(IIZ)V

    .line 177
    iget-object p0, p0, Lcom/android/settings/privacy/PrivacyDashboardFragment$2;->mSensorPrivacyManagerHelper:Lcom/android/settings/utils/SensorPrivacyManagerHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/utils/SensorPrivacyManagerHelper;->setSensorBlockedForProfileGroup(IIZ)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "clipboard_show_access_notifications"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
