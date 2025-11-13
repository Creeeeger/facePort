.class public final Landroid/app/SystemServiceRegistry;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SystemServiceRegistry$StaticServiceFetcher;,
        Landroid/app/SystemServiceRegistry$CachedServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ServiceFetcher;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;,
        Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;
    }
.end annotation


# static fields
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

.method static constructor blacklist <clinit>()V
    .locals 7

    .line 412
    const-string v0, "SystemServiceRegistry"

    const/4 v1, 0x0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 416
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    .line 418
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    .line 420
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    sput-object v3, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    .line 431
    const-class v3, Landroid/view/accessibility/AccessibilityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$1;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$1;-><init>()V

    const-string v5, "accessibility"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 438
    const-class v3, Landroid/view/accessibility/CaptioningManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$2;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$2;-><init>()V

    const-string v5, "captioning"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 445
    const-class v3, Landroid/accounts/AccountManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$3;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$3;-><init>()V

    const-string v5, "account"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 454
    const-class v3, Landroid/app/ActivityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$4;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$4;-><init>()V

    const-string v5, "activity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 461
    const-class v3, Landroid/app/ActivityTaskManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$5;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$5;-><init>()V

    const-string v5, "activity_task"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 468
    const-class v3, Landroid/app/UriGrantsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$6;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$6;-><init>()V

    const-string/jumbo v5, "uri_grants"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 476
    const-class v3, Landroid/app/AlarmManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$7;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$7;-><init>()V

    const-string v5, "alarm"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 485
    const-class v3, Landroid/media/AudioManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$8;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$8;-><init>()V

    const-string v5, "audio"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 492
    const-class v3, Landroid/media/MediaRouter;

    new-instance v4, Landroid/app/SystemServiceRegistry$9;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$9;-><init>()V

    const-string/jumbo v5, "media_router"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 499
    const-class v3, Landroid/os/CustomFrequencyManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$10;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$10;-><init>()V

    const-string v5, "CustomFrequencyManagerService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 511
    const-class v3, Landroid/hardware/hdmi/HdmiControlManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$11;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$11;-><init>()V

    const-string v5, "hdmi_control"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 519
    const-class v3, Landroid/view/textclassifier/TextClassificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$12;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$12;-><init>()V

    const-string/jumbo v5, "textclassification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 526
    const-class v3, Landroid/graphics/fonts/FontManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$13;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$13;-><init>()V

    const-string v5, "font"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 534
    const-class v3, Landroid/content/ClipboardManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$14;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$14;-><init>()V

    const-string v5, "clipboard"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 545
    const-class v3, Landroid/text/ClipboardManager;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    const-class v2, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$15;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$15;-><init>()V

    const-string/jumbo v4, "semclipboard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 556
    const-class v2, Landroid/net/PacProxyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$16;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$16;-><init>()V

    const-string/jumbo v4, "pac_proxy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 565
    const-class v2, Landroid/os/IBinder;

    new-instance v3, Landroid/app/SystemServiceRegistry$17;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$17;-><init>()V

    const-string/jumbo v4, "netd"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 572
    const-class v2, Landroid/net/TetheringManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$18;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$18;-><init>()V

    const-string/jumbo v4, "tethering"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 580
    const-class v2, Landroid/net/VpnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$19;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$19;-><init>()V

    const-string/jumbo v4, "vpn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 589
    const-class v2, Landroid/net/vcn/VcnManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$20;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$20;-><init>()V

    const-string/jumbo v4, "vcn_management"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 598
    const-class v2, Landroid/location/CountryDetector;

    new-instance v3, Landroid/app/SystemServiceRegistry$21;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$21;-><init>()V

    const-string v4, "country_detector"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 606
    const-class v2, Landroid/app/admin/DevicePolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$22;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$22;-><init>()V

    const-string v4, "device_policy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 614
    const-class v2, Landroid/app/DownloadManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$23;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$23;-><init>()V

    const-string v4, "download"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 624
    const-class v2, Landroid/os/SemHqmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$24;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$24;-><init>()V

    const-string v4, "HqmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 638
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_SYSTEM_CONFIG_HCM_AI_POWER_SAVING_LEVEL"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    const-class v2, Landroid/os/SemHcmManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$25;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$25;-><init>()V

    const-string v4, "HcmManagerService"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 654
    :cond_0
    const-class v2, Landroid/os/BatteryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$26;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$26;-><init>()V

    const-string v4, "batterymanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 665
    const-class v2, Landroid/nfc/NfcManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$27;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$27;-><init>()V

    const-string/jumbo v4, "nfc"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 672
    const-class v2, Landroid/os/DropBoxManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$28;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$28;-><init>()V

    const-string v4, "dropbox"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 681
    const-class v2, Landroid/transparency/BinaryTransparencyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$29;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$29;-><init>()V

    const-string/jumbo v4, "transparency"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 692
    const-class v2, Landroid/hardware/input/InputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$30;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$30;-><init>()V

    const-string v4, "input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 699
    const-class v2, Landroid/hardware/display/DisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$31;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$31;-><init>()V

    const-string v4, "display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 706
    const-class v2, Landroid/hardware/display/ColorDisplayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$32;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$32;-><init>()V

    const-string v4, "color_display"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 718
    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$33;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$33;-><init>()V

    const-string v4, "input_method"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 725
    const-class v2, Landroid/view/textservice/TextServicesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$34;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$34;-><init>()V

    const-string/jumbo v4, "textservices"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 733
    const-class v2, Landroid/app/KeyguardManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$35;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$35;-><init>()V

    const-string v4, "keyguard"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 740
    const-class v2, Landroid/view/LayoutInflater;

    new-instance v3, Landroid/app/SystemServiceRegistry$36;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$36;-><init>()V

    const-string v4, "layout_inflater"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 747
    const-class v2, Landroid/location/LocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$37;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$37;-><init>()V

    const-string v4, "location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 755
    const-class v2, Lcom/samsung/android/location/SemLocationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$38;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$38;-><init>()V

    const-string/jumbo v4, "sec_location"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 764
    const-class v2, Landroid/net/NetworkPolicyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$39;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$39;-><init>()V

    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 772
    const-class v2, Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$40;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$40;-><init>()V

    const-string/jumbo v4, "notification"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 788
    const-class v2, Landroid/app/people/PeopleManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$41;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$41;-><init>()V

    const-string/jumbo v4, "people"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 795
    const-class v2, Landroid/os/PowerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$42;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$42;-><init>()V

    const-string/jumbo v4, "power"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 809
    const-class v2, Landroid/os/epic/EpicManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$43;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$43;-><init>()V

    const-string v4, "epic"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 820
    const-class v2, Landroid/os/PerformanceHintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$44;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$44;-><init>()V

    const-string/jumbo v4, "performance_hint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 828
    const-class v2, Landroid/os/RecoverySystem;

    new-instance v3, Landroid/app/SystemServiceRegistry$45;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$45;-><init>()V

    const-string/jumbo v4, "recovery"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 837
    const-class v2, Landroid/app/SearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$46;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$46;-><init>()V

    const-string/jumbo v4, "search"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 845
    const-class v2, Landroid/hardware/SensorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$47;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$47;-><init>()V

    const-string/jumbo v4, "sensor"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 853
    const-class v2, Landroid/hardware/SensorPrivacyManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$48;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$48;-><init>()V

    const-string/jumbo v4, "sensor_privacy"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 860
    const-class v2, Landroid/app/StatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$49;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$49;-><init>()V

    const-string/jumbo v4, "statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 867
    const-class v2, Landroid/app/SemStatusBarManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$50;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$50;-><init>()V

    const-string/jumbo v4, "sem_statusbar"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 876
    const-class v2, Lcom/samsung/android/edge/SemEdgeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$51;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$51;-><init>()V

    const-string v4, "edge"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 887
    const-class v2, Landroid/os/storage/StorageManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$52;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$52;-><init>()V

    const-string/jumbo v4, "storage"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 894
    const-class v2, Landroid/app/usage/StorageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$53;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$53;-><init>()V

    const-string/jumbo v4, "storagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 903
    const-class v2, Landroid/os/SystemUpdateManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$54;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$54;-><init>()V

    const-string/jumbo v4, "system_update"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 914
    const-class v2, Landroid/os/SystemConfigManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$55;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$55;-><init>()V

    const-string/jumbo v4, "system_config"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 921
    const-class v2, Landroid/telephony/TelephonyRegistryManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$56;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$56;-><init>()V

    const-string/jumbo v4, "telephony_registry"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 928
    const-class v2, Landroid/telecom/TelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$57;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$57;-><init>()V

    const-string/jumbo v4, "telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 935
    invoke-static {}, Lcom/samsung/android/telecom/SemTelecomManager;->hasSamsungTelecomSystemFeature()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 936
    const-class v2, Lcom/samsung/android/telecom/SemTelecomManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$58;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$58;-><init>()V

    const-string/jumbo v4, "samsung_telecom"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 944
    :cond_1
    const-class v2, Landroid/telephony/MmsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$59;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$59;-><init>()V

    const-string/jumbo v4, "mms"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 951
    const-class v2, Landroid/app/UiModeManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$60;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$60;-><init>()V

    const-string/jumbo v4, "uimode"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 958
    const-class v2, Landroid/hardware/usb/UsbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$61;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$61;-><init>()V

    const-string/jumbo v4, "usb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 966
    const-class v2, Landroid/debug/AdbManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$62;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$62;-><init>()V

    const-string v4, "adb"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 975
    const-class v2, Landroid/hardware/SerialManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$63;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$63;-><init>()V

    const-string/jumbo v4, "serial"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 983
    const-class v2, Landroid/os/VibratorManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$64;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$64;-><init>()V

    const-string/jumbo v4, "vibrator_manager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 990
    const-class v2, Landroid/os/Vibrator;

    new-instance v3, Landroid/app/SystemServiceRegistry$65;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$65;-><init>()V

    const-string/jumbo v4, "vibrator"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 997
    const-class v2, Landroid/app/WallpaperManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$66;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$66;-><init>()V

    const-string/jumbo v4, "wallpaper"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1024
    const-class v2, Landroid/net/lowpan/LowpanManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$67;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$67;-><init>()V

    const-string v4, "lowpan"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1033
    const-class v2, Landroid/net/wifi/nl80211/WifiNl80211Manager;

    new-instance v3, Landroid/app/SystemServiceRegistry$68;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$68;-><init>()V

    const-string/jumbo v4, "wifinl80211"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1041
    const-class v2, Landroid/view/WindowManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$69;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$69;-><init>()V

    const-string/jumbo v4, "window"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1048
    const-class v2, Landroid/os/UserManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$70;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$70;-><init>()V

    const-string/jumbo v4, "user"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1057
    const-class v2, Landroid/app/AppOpsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$71;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$71;-><init>()V

    const-string v4, "appops"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1066
    const-class v2, Landroid/hardware/camera2/CameraManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$72;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$72;-><init>()V

    const-string v4, "camera"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1073
    const-class v2, Landroid/content/pm/LauncherApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$73;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$73;-><init>()V

    const-string v4, "launcherapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1080
    const-class v2, Landroid/content/RestrictionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$74;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$74;-><init>()V

    const-string/jumbo v4, "restrictions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1089
    const-class v2, Landroid/print/PrintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$75;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$75;-><init>()V

    const-string/jumbo v4, "print"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1104
    const-class v2, Landroid/companion/CompanionDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$76;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$76;-><init>()V

    const-string v4, "companiondevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1119
    const-class v2, Landroid/companion/virtual/VirtualDeviceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$77;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$77;-><init>()V

    const-string/jumbo v4, "virtualdevice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1129
    const-class v2, Landroid/hardware/ConsumerIrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$78;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$78;-><init>()V

    const-string v4, "consumer_ir"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1136
    const-class v2, Landroid/app/trust/TrustManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$79;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$79;-><init>()V

    const-string/jumbo v4, "trust"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1144
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$80;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$80;-><init>()V

    const-string v4, "fingerprint"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1158
    const-class v2, Landroid/hardware/face/FaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$81;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$81;-><init>()V

    const-string v4, "face"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1174
    const-class v2, Landroid/hardware/iris/IrisManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$82;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$82;-><init>()V

    const-string v4, "iris"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1186
    const-class v2, Landroid/hardware/biometrics/BiometricManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$83;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$83;-><init>()V

    const-string v4, "biometric"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1199
    const-class v2, Landroid/media/tv/interactive/TvInteractiveAppManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$84;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$84;-><init>()V

    const-string/jumbo v4, "tv_interactive_app"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1211
    const-class v2, Landroid/media/tv/TvInputManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$85;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$85;-><init>()V

    const-string/jumbo v4, "tv_input"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1220
    const-class v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$86;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$86;-><init>()V

    const-string/jumbo v4, "tv_tuner_resource_mgr"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1231
    const-class v2, Landroid/net/NetworkScoreManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$87;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$87;-><init>()V

    const-string/jumbo v4, "network_score"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1238
    const-class v2, Landroid/app/usage/UsageStatsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$88;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$88;-><init>()V

    const-string/jumbo v4, "usagestats"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1247
    const-class v2, Landroid/service/persistentdata/PersistentDataBlockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$89;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$89;-><init>()V

    const-string/jumbo v4, "persistent_data_block"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1263
    const-class v2, Landroid/service/oemlock/OemLockManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$90;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$90;-><init>()V

    const-string/jumbo v4, "oem_lock"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1277
    const-class v2, Landroid/media/projection/MediaProjectionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$91;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$91;-><init>()V

    const-string/jumbo v4, "media_projection"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1284
    const-class v2, Landroid/appwidget/AppWidgetManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$92;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$92;-><init>()V

    const-string v4, "appwidget"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1292
    const-class v2, Landroid/media/midi/MidiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$93;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$93;-><init>()V

    const-string/jumbo v4, "midi"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1300
    const-class v2, Landroid/hardware/radio/RadioManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$94;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$94;-><init>()V

    const-string v4, "broadcastradio"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1307
    const-class v2, Landroid/os/HardwarePropertiesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$95;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$95;-><init>()V

    const-string v4, "hardware_properties"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1317
    const-class v2, Landroid/media/soundtrigger/SoundTriggerManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$96;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$96;-><init>()V

    const-string/jumbo v4, "soundtrigger"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1325
    const-class v2, Landroid/content/pm/ShortcutManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$97;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$97;-><init>()V

    const-string/jumbo v4, "shortcut"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1333
    const-class v2, Landroid/content/om/OverlayManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$98;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$98;-><init>()V

    const-string/jumbo v4, "overlay"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1341
    const-class v2, Landroid/net/NetworkWatchlistManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$99;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$99;-><init>()V

    const-string/jumbo v4, "network_watchlist"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1352
    const-class v2, Landroid/os/health/SystemHealthManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$100;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$100;-><init>()V

    const-string/jumbo v4, "systemhealth"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1360
    const-class v2, Landroid/hardware/location/ContextHubManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$101;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$101;-><init>()V

    const-string v4, "contexthub"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1368
    const-class v2, Landroid/os/IncidentManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$102;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$102;-><init>()V

    const-string v4, "incident"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1375
    const-class v2, Landroid/os/BugreportManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$103;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$103;-><init>()V

    const-string v4, "bugreport"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1385
    const-class v2, Landroid/view/autofill/AutofillManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$104;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$104;-><init>()V

    const-string v4, "autofill"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1395
    const-class v2, Landroid/media/musicrecognition/MusicRecognitionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$105;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$105;-><init>()V

    const-string/jumbo v4, "music_recognition"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1406
    const-class v2, Landroid/view/contentcapture/ContentCaptureManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$106;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$106;-><init>()V

    const-string v4, "content_capture"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1429
    const-class v2, Landroid/view/translation/TranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$107;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$107;-><init>()V

    const-string/jumbo v4, "translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1443
    const-class v2, Landroid/view/translation/UiTranslationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$108;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$108;-><init>()V

    const-string/jumbo v4, "ui_translation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1456
    const-class v2, Landroid/app/search/SearchUiManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$109;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$109;-><init>()V

    const-string/jumbo v4, "search_ui"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1466
    const-class v2, Landroid/app/smartspace/SmartspaceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$110;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$110;-><init>()V

    const-string/jumbo v4, "smartspace"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1476
    const-class v2, Landroid/app/cloudsearch/CloudSearchManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$111;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$111;-><init>()V

    const-string v4, "cloudsearch"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1487
    const-class v2, Landroid/app/prediction/AppPredictionManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$112;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$112;-><init>()V

    const-string v4, "app_prediction"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1497
    const-class v2, Landroid/app/contentsuggestions/ContentSuggestionsManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$113;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$113;-><init>()V

    const-string v4, "content_suggestions"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1511
    const-class v2, Landroid/app/wallpapereffectsgeneration/WallpaperEffectsGenerationManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$114;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$114;-><init>()V

    const-string/jumbo v4, "wallpaper_effects_generation"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1525
    const-class v2, Landroid/app/VrManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$115;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$115;-><init>()V

    const-string/jumbo v4, "vrmanager"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1545
    const-class v2, Landroid/app/timezone/RulesManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$117;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$117;-><init>()V

    const-string/jumbo v4, "timezone"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1552
    const-class v2, Landroid/content/pm/CrossProfileApps;

    new-instance v3, Landroid/app/SystemServiceRegistry$118;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$118;-><init>()V

    const-string v4, "crossprofileapps"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1564
    const-class v2, Landroid/app/slice/SliceManager;

    new-instance v3, Landroid/app/SystemServiceRegistry$119;

    invoke-direct {v3}, Landroid/app/SystemServiceRegistry$119;-><init>()V

    const-string/jumbo v4, "slice"

    invoke-static {v4, v2, v3}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1575
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1576
    .local v2, "fmradioChipVendor":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 1577
    const-class v3, Lcom/samsung/android/media/fmradio/SemFmPlayer;

    new-instance v4, Landroid/app/SystemServiceRegistry$120;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$120;-><init>()V

    const-string v5, "FMPlayer"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1587
    :cond_2
    const-class v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$121;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$121;-><init>()V

    const-string/jumbo v5, "motion_recognition"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1594
    const-class v3, Landroid/hardware/scontext/SContextManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$122;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$122;-><init>()V

    const-string/jumbo v5, "scontext"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1604
    const-class v3, Landroid/ktuca/KtUcaManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$123;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$123;-><init>()V

    const-string v5, "ktuca"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1614
    const-class v3, Lcom/samsung/android/wifi/SemWifiManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$124;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$124;-><init>()V

    const-string/jumbo v5, "sem_wifi"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1625
    const-class v3, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$125;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$125;-><init>()V

    const-string/jumbo v5, "sem_wifi_p2p"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1635
    const-class v3, Lcom/samsung/android/wifi/aware/SemWifiAwareManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$126;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$126;-><init>()V

    const-string/jumbo v5, "sem_wifi_aware"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1646
    const-class v3, Landroid/app/timedetector/TimeDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$127;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$127;-><init>()V

    const-string/jumbo v5, "time_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1654
    const-class v3, Landroid/app/timezonedetector/TimeZoneDetector;

    new-instance v4, Landroid/app/SystemServiceRegistry$128;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$128;-><init>()V

    const-string/jumbo v5, "time_zone_detector"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1662
    const-class v3, Landroid/app/time/TimeManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$129;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$129;-><init>()V

    const-string/jumbo v5, "time_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1670
    const-class v3, Landroid/permission/PermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$130;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$130;-><init>()V

    const-string/jumbo v5, "permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1678
    const-class v3, Landroid/permission/LegacyPermissionManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$131;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$131;-><init>()V

    const-string v5, "legacy_permission"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1686
    const-class v3, Landroid/permission/PermissionControllerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$132;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$132;-><init>()V

    const-string/jumbo v5, "permission_controller"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1694
    const-class v3, Landroid/permission/PermissionCheckerManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$133;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$133;-><init>()V

    const-string/jumbo v5, "permission_checker"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1702
    const-class v3, Landroid/os/image/DynamicSystemManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$134;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$134;-><init>()V

    const-string v5, "dynamic_system"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1713
    const-class v3, Landroid/os/BatteryStatsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$135;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$135;-><init>()V

    const-string v5, "batterystats"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1723
    const-class v3, Landroid/content/pm/DataLoaderManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$136;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$136;-><init>()V

    const-string v5, "dataloader_manager"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1732
    const-class v3, Landroid/hardware/lights/LightsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$137;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$137;-><init>()V

    const-string v5, "lights"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1739
    const-class v3, Landroid/app/LocaleManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$138;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$138;-><init>()V

    const-string v5, "locale"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1747
    const-class v3, Landroid/os/incremental/IncrementalManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$139;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$139;-><init>()V

    const-string v5, "incremental"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1759
    const-class v3, Landroid/security/FileIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$140;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$140;-><init>()V

    const-string v5, "file_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1770
    const-class v3, Landroid/security/attestationverification/AttestationVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$141;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$141;-><init>()V

    const-string v5, "attestation_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1783
    const-class v3, Landroid/content/integrity/AppIntegrityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$142;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$142;-><init>()V

    const-string v5, "app_integrity"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1791
    const-class v3, Landroid/apphibernation/AppHibernationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$143;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$143;-><init>()V

    const-string v5, "app_hibernation"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1798
    const-class v3, Landroid/app/DreamManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$144;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$144;-><init>()V

    const-string v5, "dream"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1805
    const-class v3, Landroid/hardware/devicestate/DeviceStateManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$145;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$145;-><init>()V

    const-string v5, "device_state"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1814
    const-class v3, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;

    new-instance v4, Landroid/app/SystemServiceRegistry$146;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$146;-><init>()V

    const-string v5, "iccc"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1838
    const-class v3, Lcom/samsung/android/cocktailbar/CocktailBarManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$148;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$148;-><init>()V

    const-string v5, "CocktailBarService"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1848
    const-class v3, Landroid/media/metrics/MediaMetricsManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$149;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$149;-><init>()V

    const-string/jumbo v5, "media_metrics"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1860
    const-class v3, Landroid/app/GameManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$150;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$150;-><init>()V

    const-string v5, "game"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1870
    const-class v3, Landroid/content/pm/verify/domain/DomainVerificationManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$151;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$151;-><init>()V

    const-string v5, "domain_verification"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1883
    const-class v3, Landroid/view/displayhash/DisplayHashManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$152;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$152;-><init>()V

    const-string v5, "display_hash"

    invoke-static {v5, v3, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1892
    const/4 v3, 0x0

    .line 1894
    .local v3, "isExynosDisplaySolutionService":Z
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1110134

    .line 1895
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1898
    goto :goto_0

    .line 1896
    :catch_0
    move-exception v4

    .line 1897
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Not starting ExynosDisplaySolutionService"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1900
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    if-eqz v3, :cond_3

    .line 1901
    const-class v4, Landroid/hardware/display/ExynosDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$153;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$153;-><init>()V

    const-string v6, "exynos_display"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1917
    :cond_3
    const-class v4, Landroid/app/ambientcontext/AmbientContextManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$154;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$154;-><init>()V

    const-string v6, "ambient_context"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1930
    const-class v4, Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$155;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$155;-><init>()V

    const-string/jumbo v6, "persona"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1939
    const-class v4, Lcom/samsung/android/knox/SemRemoteContentManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$156;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$156;-><init>()V

    const-string/jumbo v6, "rcp"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1950
    const-class v4, Lcom/samsung/android/isrb/IsrbManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$157;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$157;-><init>()V

    const-string v6, "isrb"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1960
    const-class v4, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$158;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$158;-><init>()V

    const-string v6, "desktopmode"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1978
    const-class v4, Lcom/samsung/android/remoteappmode/SemRemoteAppModeManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$159;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$159;-><init>()V

    const-string/jumbo v6, "remoteappmode"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 1996
    const-class v4, Lcom/samsung/android/multicontrol/SemMultiControlManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$160;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$160;-><init>()V

    const-string/jumbo v6, "multicontrol"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2013
    sget-boolean v4, Lcom/samsung/android/sepunion/UnionUtils;->FEATURE_ENABLED:Z

    if-eqz v4, :cond_4

    .line 2014
    const-class v4, Lcom/samsung/android/sepunion/SemUnionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$161;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$161;-><init>()V

    const-string/jumbo v6, "sepunion"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2026
    :cond_4
    const-class v4, Lcom/samsung/android/hardware/display/SemMdnieManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$162;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$162;-><init>()V

    const-string/jumbo v6, "mDNIe"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2037
    const-class v4, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v5, Landroid/app/SystemServiceRegistry$163;

    invoke-direct {v5}, Landroid/app/SystemServiceRegistry$163;-><init>()V

    const-string v6, "DisplaySolution"

    invoke-static {v6, v4, v5}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2048
    const-string/jumbo v4, "systemservice inputdev:true"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$164;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$164;-><init>()V

    const-string v5, "SemInputDeviceManagerService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2062
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v4, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 2063
    const-class v0, Lcom/samsung/android/continuity/SemContinuityManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$165;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$165;-><init>()V

    const-string v5, "SemContinuityService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2076
    :cond_5
    const-class v0, Lvendor/samsung/frameworks/codecsolution/SemCodecSolutionService;

    new-instance v4, Landroid/app/SystemServiceRegistry$166;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$166;-><init>()V

    const-string v5, "CodecSolution"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2086
    const-class v0, Lcom/samsung/android/media/codec/SemVideoTranscodingService;

    new-instance v4, Landroid/app/SystemServiceRegistry$167;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$167;-><init>()V

    const-string v5, "SemVideoTranscodingService"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2097
    const-class v0, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    new-instance v4, Landroid/app/SystemServiceRegistry$168;

    invoke-direct {v4}, Landroid/app/SystemServiceRegistry$168;-><init>()V

    const-string/jumbo v5, "spengestureservice"

    invoke-static {v5, v0, v4}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2107
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2111
    :try_start_1
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializer;->registerServiceWrappers()V

    .line 2112
    invoke-static {}, Landroid/app/job/JobSchedulerFrameworkInitializer;->registerServiceWrappers()V

    .line 2113
    invoke-static {}, Landroid/app/blob/BlobStoreManagerFrameworkInitializer;->initialize()V

    .line 2114
    invoke-static {}, Landroid/bluetooth/BluetoothFrameworkInitializer;->registerServiceWrappers()V

    .line 2115
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->registerServiceWrappers()V

    .line 2116
    invoke-static {}, Landroid/app/appsearch/AppSearchManagerFrameworkInitializer;->initialize()V

    .line 2117
    invoke-static {}, Landroid/net/wifi/WifiFrameworkInitializer;->registerServiceWrappers()V

    .line 2118
    invoke-static {}, Landroid/os/StatsFrameworkInitializer;->registerServiceWrappers()V

    .line 2119
    invoke-static {}, Landroid/content/rollback/RollbackManagerFrameworkInitializer;->initialize()V

    .line 2120
    invoke-static {}, Landroid/media/MediaFrameworkPlatformInitializer;->registerServiceWrappers()V

    .line 2121
    invoke-static {}, Landroid/media/MediaFrameworkInitializer;->registerServiceWrappers()V

    .line 2122
    invoke-static {}, Landroid/app/role/RoleFrameworkInitializer;->registerServiceWrappers()V

    .line 2123
    invoke-static {}, Landroid/scheduling/SchedulingFrameworkInitializer;->registerServiceWrappers()V

    .line 2124
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxManagerFrameworkInitializer;->registerServiceWrappers()V

    .line 2125
    invoke-static {}, Landroid/adservices/AdServicesFrameworkInitializer;->registerServiceWrappers()V

    .line 2126
    invoke-static {}, Landroid/uwb/UwbFrameworkInitializer;->registerServiceWrappers()V

    .line 2127
    invoke-static {}, Landroid/safetycenter/SafetyCenterFrameworkInitializer;->registerServiceWrappers()V

    .line 2128
    invoke-static {}, Landroid/net/ConnectivityFrameworkInitializerTiramisu;->registerServiceWrappers()V

    .line 2129
    invoke-static {}, Landroid/nearby/NearbyFrameworkInitializer;->registerServiceWrappers()V

    .line 2130
    invoke-static {}, Landroid/ondevicepersonalization/OnDevicePersonalizationFrameworkInitializer;->registerServiceWrappers()V

    .line 2132
    invoke-static {}, Lcom/samsung/android/privilege/SemPrivilegeManagerFrameworkInitializer;->initialize()V

    .line 2135
    invoke-static {}, Lcom/samsung/android/ipm/SecIpmManagerFrameworkInitializer;->initialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2140
    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2141
    nop

    .line 2142
    .end local v2    # "fmradioChipVendor":Ljava/lang/String;
    .end local v3    # "isExynosDisplaySolutionService":Z
    return-void

    .line 2140
    .restart local v2    # "fmradioChipVendor":Ljava/lang/String;
    .restart local v3    # "isExynosDisplaySolutionService":Z
    :catchall_0
    move-exception v0

    sput-boolean v1, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    .line 2141
    throw v0
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createServiceCache()[Ljava/lang/Object;
    .locals 1

    .line 2154
    sget v0, Landroid/app/SystemServiceRegistry;->sServiceCacheSize:I

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private static blacklist ensureInitializing(Ljava/lang/String;)V
    .locals 3
    .param p0, "methodName"    # Ljava/lang/String;

    .line 2146
    sget-boolean v0, Landroid/app/SystemServiceRegistry;->sInitializing:Z

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Internal error: %s can only be called during class initialization."

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    return-void
.end method

.method public static blacklist getSystemService(Landroid/app/ContextImpl;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "ctx"    # Landroid/app/ContextImpl;
    .param p1, "name"    # Ljava/lang/String;

    .line 2162
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 2163
    return-object v0

    .line 2165
    :cond_0
    sget-object v1, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SystemServiceRegistry$ServiceFetcher;

    .line 2166
    .local v1, "fetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<*>;"
    const-string v2, "SystemServiceRegistry"

    if-nez v1, :cond_2

    .line 2167
    sget-boolean v3, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v3, :cond_1

    .line 2168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown manager requested: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    :cond_1
    return-object v0

    .line 2173
    :cond_2
    invoke-interface {v1, p0}, Landroid/app/SystemServiceRegistry$ServiceFetcher;->getService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v3

    .line 2174
    .local v3, "ret":Ljava/lang/Object;
    sget-boolean v4, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 2176
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    goto :goto_0

    :sswitch_0
    const-string v5, "incremental"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v5, "content_capture"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_2
    const-string v5, "app_prediction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :sswitch_3
    const-string v5, "ethernet"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x3

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 2183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Manager wrapper not available: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    return-object v0

    .line 2181
    :pswitch_0
    return-object v0

    .line 2186
    :cond_4
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5499b029 -> :sswitch_3
        -0x2dd60a93 -> :sswitch_2
        0x3a1b1980 -> :sswitch_1
        0x40b177da -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist getSystemServiceClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 2225
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
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

    .line 2194
    .local p0, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 2195
    const/4 v0, 0x0

    return-object v0

    .line 2197
    :cond_0
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2198
    .local v0, "serviceName":Ljava/lang/String;
    sget-boolean v1, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2200
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

    .line 2202
    :cond_1
    return-object v0
.end method

.method public static blacklist onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    .locals 3
    .param p0, "e"    # Landroid/os/ServiceManager$ServiceNotFoundException;

    .line 2570
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v1, "SystemServiceRegistry"

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_0

    .line 2571
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2573
    :cond_0
    invoke-virtual {p0}, Landroid/os/ServiceManager$ServiceNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    :goto_0
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
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

    .line 2385
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2386
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2387
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2388
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2390
    new-instance v0, Landroid/app/SystemServiceRegistry$171;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$171;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2399
    return-void
.end method

.method public static whitelist registerContextAwareService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
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

    .line 2413
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerContextAwareService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2414
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2415
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2416
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2418
    new-instance v0, Landroid/app/SystemServiceRegistry$172;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$172;-><init>(Landroid/app/SystemServiceRegistry$ContextAwareServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2424
    return-void
.end method

.method private static blacklist registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V
    .locals 2
    .param p0, "serviceName"    # Ljava/lang/String;
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

    .line 2211
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "serviceFetcher":Landroid/app/SystemServiceRegistry$ServiceFetcher;, "Landroid/app/SystemServiceRegistry$ServiceFetcher<TT;>;"
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_NAMES:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2212
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_FETCHERS:Ljava/util/Map;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    sget-object v0, Landroid/app/SystemServiceRegistry;->SYSTEM_SERVICE_CLASS_NAMES:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2214
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
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

    .line 2328
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2329
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2330
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2331
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2333
    new-instance v0, Landroid/app/SystemServiceRegistry$169;

    invoke-direct {v0, p2, p0}, Landroid/app/SystemServiceRegistry$169;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithBinder;Ljava/lang/String;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2340
    return-void
.end method

.method public static whitelist registerStaticService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V
    .locals 1
    .param p0, "serviceName"    # Ljava/lang/String;
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

    .line 2352
    .local p1, "serviceWrapperClass":Ljava/lang/Class;, "Ljava/lang/Class<TTServiceClass;>;"
    .local p2, "serviceProducer":Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;, "Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder<TTServiceClass;>;"
    const-string/jumbo v0, "registerStaticService"

    invoke-static {v0}, Landroid/app/SystemServiceRegistry;->ensureInitializing(Ljava/lang/String;)V

    .line 2353
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2355
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2357
    new-instance v0, Landroid/app/SystemServiceRegistry$170;

    invoke-direct {v0, p2}, Landroid/app/SystemServiceRegistry$170;-><init>(Landroid/app/SystemServiceRegistry$StaticServiceProducerWithoutBinder;)V

    invoke-static {p0, p1, v0}, Landroid/app/SystemServiceRegistry;->registerService(Ljava/lang/String;Ljava/lang/Class;Landroid/app/SystemServiceRegistry$ServiceFetcher;)V

    .line 2363
    return-void
.end method
