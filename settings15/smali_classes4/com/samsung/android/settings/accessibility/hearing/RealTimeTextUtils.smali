.class public abstract Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sImsManagerMap:Ljava/util/Map;

.field public static sImsManagers:[Lcom/samsung/android/ims/SemImsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagerMap:Ljava/util/Map;

    return-void
.end method

.method public static getDefaultDataPhoneId(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const-class v1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getImsManager(Landroid/content/Context;I)Lcom/samsung/android/ims/SemImsManager;
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->FEATURE_ACCESSIBILITY_SETTINGS_HOME_APPLIANCE_BACKUP:Z

    const-string/jumbo v0, "ro.multisim.simslotcount"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    if-nez v1, :cond_1

    new-array v0, v0, [Lcom/samsung/android/ims/SemImsManager;

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/SemImsManager;

    if-eqz v0, :cond_2

    const-string p0, "getImsMgr return cache value:"

    const-string v1, "RealTimeTextUtils"

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/samsung/android/ims/SemImsManager;

    new-instance v1, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;

    invoke-direct {v1, p1}, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils$1;-><init>(I)V

    invoke-direct {v0, p0, v1, p1}, Lcom/samsung/android/ims/SemImsManager;-><init>(Landroid/content/Context;Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;I)V

    sget-object p0, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->sImsManagers:[Lcom/samsung/android/ims/SemImsManager;

    aput-object v0, p0, p1

    invoke-virtual {v0}, Lcom/samsung/android/ims/SemImsManager;->connectService()V

    return-object v0
.end method

.method public static isVoLteSupported(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    const-string v1, "RealTimeTextUtils"

    :try_start_0
    invoke-static {p0, v0}, Lcom/samsung/android/settings/accessibility/hearing/RealTimeTextUtils;->getImsManager(Landroid/content/Context;I)Lcom/samsung/android/ims/SemImsManager;

    move-result-object p0

    const-string/jumbo v0, "mmtel"

    const/16 v2, 0xd

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/ims/SemImsManager;->isImsFeatureEnabled(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "voltesupport:"

    invoke-static {v0, p0, v1}, Landroidx/glance/session/SessionManagerImpl$scope$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v0, "voltesupport: "

    invoke-static {v0, v1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method
