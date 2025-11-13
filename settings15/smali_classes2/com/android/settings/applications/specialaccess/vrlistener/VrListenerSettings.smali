.class public Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-class v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    const v9, 0x7f14323c

    const v10, 0x7f141a4c

    const-string v2, "VrListenerSettings"

    const-string v3, "enabled_vr_listeners"

    const-string v4, "android.service.vr.VrListenerService"

    const/4 v5, 0x0

    const-string v6, "android.permission.BIND_VR_LISTENER_SERVICE"

    const-string v7, "vr listener"

    const v8, 0x7f14323d

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    sput-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f170292

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x14e

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170292

    return p0
.end method

.method public logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    const/16 p1, 0x304

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/16 p1, 0x305

    goto :goto_0

    :goto_1
    sget-object p1, Lcom/android/settings/overlay/FeatureFactoryImpl;->_factory:Lcom/android/settings/overlay/FeatureFactoryImpl;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactoryImpl;->getMetricsFeatureProvider()Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getAttribution(Landroid/app/Activity;)I

    move-result v1

    const/16 v3, 0x14e

    const/4 v4, 0x0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "No feature factory configured"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/applications/specialaccess/vrlistener/VrListenerSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
