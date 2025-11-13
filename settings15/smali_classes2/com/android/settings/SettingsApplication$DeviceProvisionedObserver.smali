.class public final Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDeviceProvisionedUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/SettingsApplication;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->this$0:Lcom/android/settings/SettingsApplication;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->mDeviceProvisionedUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p1

    const-string p2, "flag_user_setup_complete"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->getInstance()Lcom/samsung/android/settings/homepage/SecTopLevelFeature;

    move-result-object p1

    const-string p2, "flag_settings_support_large_screen"

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/homepage/SecTopLevelFeature;->setBoolean(Ljava/lang/String;Z)V

    :cond_1
    new-instance p1, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    iget-object p0, p0, Lcom/android/settings/SettingsApplication$DeviceProvisionedObserver;->this$0:Lcom/android/settings/SettingsApplication;

    invoke-direct {p1, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    return-void
.end method
