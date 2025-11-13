.class public Lcom/samsung/android/settings/actions/ActionIndexableResources;
.super Ljava/lang/Object;
.source "ActionIndexableResources.java"


# static fields
.field private static mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;


# instance fields
.field private final mProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    .line 35
    const-class v0, Lcom/samsung/android/settings/account/controller/AutoSyncBaseController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 36
    const-class v0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 37
    const-class v0, Lcom/android/settings/location/LocationSwitchBarController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 38
    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 39
    const-class v0, Lcom/android/settings/system/FactoryResetPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 40
    const-class v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixbyController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 41
    const-class v0, Lcom/samsung/android/settings/display/controller/SecFontSizePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 42
    const-class v0, Lcom/samsung/android/settings/display/controller/SecFontStylePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 46
    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/SmoothMotionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 47
    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 48
    const-class v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 49
    const-class v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 50
    const-class v0, Lcom/samsung/android/settings/display/controller/FrontScreenAppsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 51
    const-class v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 52
    const-class v0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 53
    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/ScreenTimeoutPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    .line 54
    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/settings/actions/ActionIndexableResources;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/samsung/android/settings/actions/ActionIndexableResources;

    invoke-direct {v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    .line 63
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;

    return-object v0
.end method


# virtual methods
.method public addIndex(Ljava/lang/Class;)V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getProviderValues()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    return-object p0
.end method
