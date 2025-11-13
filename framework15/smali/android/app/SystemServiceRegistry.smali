.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
    }
.end annotation


# static fields
.field static final blacklist ENABLE_CHECKING_TELEPHONY_FEATURES_FOR_VCN:J = 0x13b92a00L

.field private static final blacklist SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist SYSTEM_SERVICE_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SystemServiceRegistry"

.field private static final blacklist VENDOR_API_FOR_ANDROID_V:I = 0x316a4

.field public static blacklist sEnableServiceNotFoundWtf:Z

.field private static volatile blacklist sInitializing:Z

.field private static blacklist sServiceCacheSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsServiceCacheSize()I
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsServiceCacheSize(I)V
    .locals 0

    sput p0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetVcnFeatureDependency()Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/app/SystemServiceRegistry;->getVcnFeatureDependency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 9

    const-string v0, "CAMERA,STORAGE"

    const-string v1, "SystemServiceRegistry"

    const/4 v2, 0x0

    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v5, "accessibility"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/accessibility/CaptioningManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v5, "captioning"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/accounts/AccountManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v5, "account"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/ActivityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v5, "activity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/ActivityTaskManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v5, "activity_task"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/UriGrantsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v5, "uri_grants"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/AlarmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v5, "alarm"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/AudioManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v5, "audio"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/AudioDeviceVolumeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string v5, "audio_device_volume"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/MediaRouter;

    new-instance v4, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string/jumbo v5, "media_router"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/CustomFrequencyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v4, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string v5, "iccc"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Lcom/samsung/android/displayaiqe/DisplayAiqeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v5, "display_aiqe"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string v5, "hdmi_control"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v5, "textclassification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/graphics/fonts/FontManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string v5, "font"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/ClipboardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string v5, "clipboard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    const-class v4, Landroid/text/ClipboardManager;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v3, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v5, "semclipboard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/PacProxyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string/jumbo v5, "pac_proxy"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/IBinder;

    new-instance v4, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string/jumbo v5, "netd"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/TetheringManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string/jumbo v5, "tethering"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/VpnManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string/jumbo v5, "vpn_management"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/vcn/VcnManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string/jumbo v5, "vcn_management"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/location/CountryDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v5, "country_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v5, "device_policy"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/DownloadManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string v5, "download"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/SemHqmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v5, "HqmManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-class v3, Landroid/os/SemHcmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string v5, "HcmManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_0
    const-class v3, Landroid/os/BatteryManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v5, "batterymanager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/DropBoxManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v5, "dropbox"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/transparency/BinaryTransparencyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string/jumbo v5, "transparency"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/input/InputManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v5, "input"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/display/DisplayManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string v5, "display"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/display/ColorDisplayManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string v5, "color_display"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string v5, "input_method"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/textservice/TextServicesManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string/jumbo v5, "textservices"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/KeyguardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v5, "keyguard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/LayoutInflater;

    new-instance v4, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v5, "layout_inflater"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/location/LocationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v5, "location"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Lcom/samsung/android/location/SemLocationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v5, "sec_location"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/NetworkPolicyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v5, "netpolicy"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string/jumbo v5, "notification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/people/PeopleManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v5, "people"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/PowerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v5, "power"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/epic/EpicManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string v5, "epic"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/PerformanceHintManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v5, "performance_hint"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/RecoverySystem;

    new-instance v4, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v5, "recovery"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/SearchManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v5, "search"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/SecurityStateManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v5, "security_state"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/SensorManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string/jumbo v5, "sensor"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/SensorPrivacyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v5, "sensor_privacy"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/StatusBarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v5, "statusbar"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/SemStatusBarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string/jumbo v5, "sem_statusbar"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Lcom/samsung/android/edge/SemEdgeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string v5, "edge"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/storage/StorageManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v5, "storage"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/usage/StorageStatsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v5, "storagestats"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/SystemUpdateManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v5, "system_update"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/SystemConfigManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v5, "system_config"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/telephony/TelephonyRegistryManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v5, "telephony_registry"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/telecom/TelecomManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v5, "telecom"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/samsung/android/telecom/SemTelecomManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string/jumbo v5, "samsung_telecom"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_1
    const-class v3, Landroid/telephony/MmsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v5, "mms"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/UiModeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v5, "uimode"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/usb/UsbManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string/jumbo v5, "usb"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/debug/AdbManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string v5, "adb"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/SerialManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string/jumbo v5, "serial"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/VibratorManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v5, "vibrator_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/Vibrator;

    new-instance v4, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string/jumbo v5, "vibrator"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/WallpaperManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v5, "wallpaper"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v4, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string/jumbo v5, "wifinl80211"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v5, "CameraServiceWorker_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/WindowManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string/jumbo v5, "window"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/UserManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v5, "user"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/AppOpsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string v5, "appops"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/camera2/CameraManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v5, "camera"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/pm/LauncherApps;

    new-instance v4, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v5, "launcherapps"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/RestrictionsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string/jumbo v5, "restrictions"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/print/PrintManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v5, "print"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/companion/CompanionDeviceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v5, "companiondevice"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AI_AGENT"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionManager()Z

    move-result v3

    if-eqz v3, :cond_2

    const-class v3, Landroid/app/appfunctions/AppFunctionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string v5, "app_function"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_2
    const-class v3, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string/jumbo v5, "virtualdevice"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/ConsumerIrManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v5, "consumer_ir"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/trust/TrustManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v5, "trust"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string v5, "fingerprint"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/face/FaceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string v5, "face"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/iris/IrisManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string v5, "iris"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/biometrics/BiometricManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string v5, "biometric"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v5, "tv_interactive_app"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/tv/ad/TvAdManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v5, "tv_ad"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/tv/TvInputManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v5, "tv_input"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string/jumbo v5, "tv_tuner_resource_mgr"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/NetworkScoreManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v5, "network_score"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/usage/UsageStatsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string/jumbo v5, "usagestats"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string/jumbo v5, "persistent_data_block"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/service/oemlock/OemLockManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v5, "oem_lock"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/projection/MediaProjectionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v5, "media_projection"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/appwidget/AppWidgetManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string v5, "appwidget"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/midi/MidiManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string/jumbo v5, "midi"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/radio/RadioManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string v5, "broadcastradio"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/HardwarePropertiesManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v5, "hardware_properties"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string/jumbo v5, "soundtrigger"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/pm/ShortcutManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string/jumbo v5, "shortcut"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/om/OverlayManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string/jumbo v5, "overlay"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/net/NetworkWatchlistManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v5, "network_watchlist"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/health/SystemHealthManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string/jumbo v5, "systemhealth"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/hardware/location/ContextHubManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string v5, "contexthub"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/IncidentManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string v5, "incident"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/os/BugreportManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string v5, "bugreport"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/autofill/AutofillManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string v5, "autofill"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/credentials/CredentialManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v5, "credential"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string/jumbo v5, "music_recognition"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string v5, "content_capture"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/translation/TranslationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v5, "translation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/view/translation/UiTranslationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v5, "ui_translation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/search/SearchUiManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$116;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$116;-><init>()V

    const-string/jumbo v5, "search_ui"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/smartspace/SmartspaceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v5, "smartspace"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/contextualsearch/ContextualSearchManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string v5, "contextual_search"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/prediction/AppPredictionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string v5, "app_prediction"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v5, "content_suggestions"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string/jumbo v5, "wallpaper_effects_generation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/VrManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v5, "vrmanager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/content/pm/CrossProfileApps;

    new-instance v4, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string v5, "crossprofileapps"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v3, Landroid/app/slice/SliceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v5, "slice"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    const-class v3, Lcom/samsung/android/continuity/SemContinuityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string v5, "SemContinuityService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_3
    const-string v3, "in_house"

    invoke-virtual {v3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "sep_basic"

    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    const-class v5, Lcom/samsung/android/contextengine/SemContextEngineManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string v7, "SemContextEngineService"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_4
    :try_start_0
    const-string v5, "CAMERA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "STORAGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "SemHwrsService"

    const-class v5, Lcom/samsung/android/hwrs/SemHwrsManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    invoke-static {v0, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SemHwrsManager registerService failed"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-class v0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string/jumbo v6, "motion_recognition"

    invoke-static {v6, v0, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v0, Landroid/hardware/scontext/SContextManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v6, "scontext"

    invoke-static {v6, v0, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v5, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_7

    const-class v5, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v6, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string v7, "FMPlayer"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_7
    const-class v5, Lcom/samsung/android/multicontrol/SemMultiControlManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string/jumbo v7, "multicontrol"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string/jumbo v7, "remoteappmode"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Lcom/samsung/android/provider/SemDynamicFeature;->isSuitable()Z

    move-result v5

    if-eqz v5, :cond_8

    const-class v5, Lcom/samsung/android/provider/DynamicFeatureManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string v7, "dynamic_feature"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_8
    const-class v5, Landroid/app/timedetector/TimeDetector;

    new-instance v6, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string/jumbo v7, "time_detector"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v6, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string/jumbo v7, "time_zone_detector"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/app/time/TimeManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string/jumbo v7, "time_manager"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/permission/PermissionManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string/jumbo v7, "permission"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/permission/LegacyPermissionManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string/jumbo v7, "legacy_permission"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/permission/PermissionControllerManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string/jumbo v7, "permission_controller"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/permission/PermissionCheckerManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string/jumbo v7, "permission_checker"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/os/PermissionEnforcer;

    new-instance v6, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string/jumbo v7, "permission_enforcer"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/os/image/DynamicSystemManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string v7, "dynamic_system"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/os/BatteryStatsManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v7, "batterystats"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/content/pm/DataLoaderManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string v7, "dataloader_manager"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/hardware/lights/LightsManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string/jumbo v7, "lights"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/app/LocaleManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$146;-><init>()V

    const-string/jumbo v7, "locale"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/os/incremental/IncrementalManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$147;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$147;-><init>()V

    const-string v7, "incremental"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/security/FileIntegrityManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v7, "file_integrity"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string v7, "attestation_verification"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/content/integrity/AppIntegrityManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string v7, "app_integrity"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/apphibernation/AppHibernationManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v7, "app_hibernation"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/app/DreamManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v7, "dream"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$153;-><init>()V

    const-string v7, "device_state"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$154;-><init>()V

    const-string v7, "CocktailBarService"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/media/metrics/MediaMetricsManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$155;-><init>()V

    const-string/jumbo v7, "media_metrics"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/app/GameManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$156;-><init>()V

    const-string v7, "game"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$157;-><init>()V

    const-string v7, "domain_verification"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v5, Landroid/view/displayhash/DisplayHashManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$158;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$158;-><init>()V

    const-string v7, "display_hash"

    invoke-static {v7, v5, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const/4 v5, 0x0

    :try_start_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x111016e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v5, v6

    goto :goto_1

    :catch_1
    move-exception v6

    const-string v7, "Not starting ExynosDisplaySolutionService"

    invoke-static {v1, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v5, :cond_9

    const-class v6, Landroid/hardware/display/ExynosDisplaySolutionManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$159;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$159;-><init>()V

    const-string v8, "exynos_display"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_9
    const-class v6, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$160;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$160;-><init>()V

    const-string v8, "ambient_context"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Landroid/app/wearable/WearableSensingManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$161;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$161;-><init>()V

    const-string/jumbo v8, "wearable_sensing"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$162;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$162;-><init>()V

    const-string/jumbo v8, "on_device_intelligence"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Landroid/app/GrammaticalInflectionManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$163;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$163;-><init>()V

    const-string v8, "grammatical_inflection"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$164;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$164;-><init>()V

    const-string/jumbo v8, "mDNIe"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$165;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$165;-><init>()V

    const-string v8, "DisplaySolution"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$166;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$166;-><init>()V

    const-string/jumbo v8, "persona"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$167;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$167;-><init>()V

    const-string/jumbo v8, "rcp"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/isrb/IsrbManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$168;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$168;-><init>()V

    const-string/jumbo v8, "isrb"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$169;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$169;-><init>()V

    const-string/jumbo v8, "shared_connectivity"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/knox/mtd/KMTDManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$170;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$170;-><init>()V

    const-string/jumbo v8, "knox.mtd"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Landroid/provider/E2eeContactKeysManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$171;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$171;-><init>()V

    const-string v8, "contact_keys"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    invoke-static {}, Landroid/app/Flags;->bicClient()Z

    move-result v6

    if-eqz v6, :cond_a

    const-class v6, Landroid/app/BackgroundInstallControlManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$172;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$172;-><init>()V

    const-string v8, "background_install_control"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_a
    const-class v6, Lcom/samsung/android/mocca/SemMdContextManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$173;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$173;-><init>()V

    const-string/jumbo v8, "mocca"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$174;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$174;-><init>()V

    const-string v8, "SemInputDeviceManagerService"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$175;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$175;-><init>()V

    const-string/jumbo v8, "sem_wifi"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$176;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$176;-><init>()V

    const-string/jumbo v8, "sem_wifi_p2p"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$177;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$177;-><init>()V

    const-string/jumbo v8, "sem_wifi_aware"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v6, Lcom/samsung/android/wifi/stdp/StandardPlusManager;

    new-instance v7, Landroid/app/SystemServiceRegistry$178;

    invoke-direct {v7}, Landroid/app/SystemServiceRegistry$178;-><init>()V

    const-string/jumbo v8, "stdp_service"

    invoke-static {v8, v6, v7}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SemDisplayQualityFeature.ENABLED:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",PLATFORM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->PLATFORM:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/samsung/android/displayquality/SemDisplayQualityFeature;->ENABLED:Z

    if-eqz v1, :cond_b

    const-class v1, Lcom/samsung/android/displayquality/SemDisplayQualityManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$179;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$179;-><init>()V

    const-string v7, "DisplayQuality"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_b
    const-class v1, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    new-instance v6, Landroid/app/SystemServiceRegistry$180;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$180;-><init>()V

    const-string v7, "SemVideoTranscodingService"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$181;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$181;-><init>()V

    const-string v7, "desktopmode"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    sget-boolean v1, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_c

    const-class v1, Lcom/samsung/android/sepunion/SemUnionManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$182;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$182;-><init>()V

    const-string/jumbo v7, "sepunion"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    :cond_c
    const-class v1, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    new-instance v6, Landroid/app/SystemServiceRegistry$183;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$183;-><init>()V

    const-string v7, "CodecSolution"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/net/ExtendedEthernetManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$184;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$184;-><init>()V

    const-string v7, "extendedethernetservice"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$185;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$185;-><init>()V

    const-string/jumbo v7, "spengestureservice"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const-class v1, Lcom/samsung/android/ssdid/SemSsdidManager;

    new-instance v6, Landroid/app/SystemServiceRegistry$186;

    invoke-direct {v6}, Landroid/app/SystemServiceRegistry$186;-><init>()V

    const-string/jumbo v7, "sem_ssdid"

    invoke-static {v7, v1, v6}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    :try_start_2
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/nfc/NfcFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/health/connect/HealthServicesInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/devicelock/DeviceLockFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationFrameworkInitializer;->registerServiceWrappers()V

    invoke-static {}, Lcom/android/server/telecom/flags/Flags;->telecomMainlineBlockedNumbersManager()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Landroid/provider/ProviderFrameworkInitializer;->registerServiceWrappers()V

    :cond_d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {}, Landroid/app/ecm/EnhancedConfirmationFrameworkInitializer;->registerServiceWrappers()V

    :cond_e
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-static {}, Landroid/os/ProfilingFrameworkInitializer;->registerServiceWrappers()V

    :cond_f
    invoke-static {}, Landroid/webkit/Flags;->updateServiceIpcWrapper()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Landroid/webkit/WebViewBootstrapFrameworkInitializer;->registerServiceWrappers()V

    :cond_10
    invoke-static {}, Lcom/samsung/android/lifeguard/LifeGuardManagerFrameworkInitializer;->initialize()V

    invoke-static {}, Lcom/samsung/android/shell/ShellFrameworkInitializer;->registerServiceWrappers()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    throw v1
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .locals 1

    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const-string v1, "Internal error: %s can only be called during class initialization."

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    invoke-static {p1}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v2

    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_3

    if-nez v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v3, "vcn_management"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_1
    const-string v3, "incremental"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v3, "content_capture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "virtualdevice"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_4
    const-string v3, "contexthub"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "virtualization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "app_prediction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_7
    const-string/jumbo v3, "search"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_8
    const-string v3, "ethernet"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_9
    const-string v3, "appwidget"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :goto_0
    const/4 v3, -0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v3, "android.software.app_widgets"

    invoke-static {p0, v3}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    :pswitch_1
    const-string v3, "android.hardware.type.watch"

    invoke-static {p0, v3}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :pswitch_2
    const-string v3, "android.hardware.telephony.subscription"

    invoke-static {p0, v3}, Landroid/app/SystemServiceRegistry;->hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v1

    :pswitch_3
    return-object v1

    :cond_2
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manager wrapper not available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SystemServiceRegistry"

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x69cd085b -> :sswitch_9
        -0x5499b029 -> :sswitch_8
        -0x36059a58 -> :sswitch_7
        -0x2dd60a93 -> :sswitch_6
        0x35db2f9 -> :sswitch_5
        0x1051cce6 -> :sswitch_4
        0x38858921 -> :sswitch_3
        0x3a1b1980 -> :sswitch_2
        0x40b177da -> :sswitch_1
        0x7cd04fe1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    if-nez v1, :cond_2

    sget-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown manager requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SystemServiceRegistry"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    return-object v1
.end method

.method public static blacklist getSystemServiceName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown manager requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SystemServiceRegistry"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method public static blacklist getSystemServiceWithNoContext(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    invoke-static {p0}, Landroid/app/SystemServiceRegistry;->getSystemServiceFetcher(Ljava/lang/String;)Landroid/app/SystemServiceRegistry$ServiceFetcher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->supportsFetchWithoutContext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Manager cannot be fetched without a context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getVcnFeatureDependency()Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x13b92a00

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string/jumbo v0, "ro.vendor.api_level"

    sget v1, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x316a4

    if-ge v0, v1, :cond_1

    const-string v1, "android.hardware.telephony"

    return-object v1

    :cond_1
    const-string v1, "android.hardware.telephony.subscription"

    return-object v1
.end method

.method private static blacklist hasSystemFeatureOpportunistic(Landroid/app/ContextImpl;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x2710

    const-string v2, "SystemServiceRegistry"

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$190;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$190;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$191;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$191;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static blacklist registerForeverStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$188;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$188;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$187;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$187;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TServiceClass:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TTServiceClass;>;",
            "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<",
            "TTServiceClass;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/SystemServiceRegistry$189;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$189;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    return-void
.end method
