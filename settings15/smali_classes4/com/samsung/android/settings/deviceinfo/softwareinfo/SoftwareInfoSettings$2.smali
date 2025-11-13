.class public final Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings$2;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;

    sget-object p1, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SoftwareInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settingslib.development.DevelopmentSettingsEnabler.SETTINGS_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
