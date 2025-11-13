.class public final Lcom/samsung/android/settings/actions/ActionIndexableResources;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mInstance:Lcom/samsung/android/settings/actions/ActionIndexableResources;


# instance fields
.field public final mProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    const-class v0, Lcom/samsung/android/settings/account/controller/AutoSyncBaseController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/ScreenZoomLevelPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/location/LocationSwitchBarController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/android/settings/system/FactoryResetPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/SecFontSizePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/SecFontStylePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/SmoothMotionPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/BrightnessPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/CameraCutoutPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/FullScreenAppsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/FrontScreenAppsPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/ScreenModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/ScreenTimeoutPreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/display/gtscontroller/DarkModePreferenceController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixbyController;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/actions/ActionIndexableResources;->addIndex(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final addIndex(Ljava/lang/Class;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionIndexableResources;->mProviders:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
