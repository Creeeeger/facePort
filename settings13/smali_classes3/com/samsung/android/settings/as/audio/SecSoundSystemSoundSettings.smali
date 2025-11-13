.class public Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SecSoundSystemSoundSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/core/SecSettingsBaseActivity$onKeyEventListener;
.implements Lcom/android/settings/core/OnActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;,
        Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPrefControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field private mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

.field private final mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSystemController(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smbuildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 196
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settingslib/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$IconCallback-IA;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;-><init>(Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundFolderSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundGPSNotiSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundGPSNotiSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecDockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecDockAudioMediaPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecDockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecEmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_0

    .line 94
    iput-object v0, p1, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecSystemSoundSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x27e2

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 60
    sget p0, Lcom/android/settings/R$xml;->as_system_sound_settings:I

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    const/4 p1, 0x0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mPrefControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 110
    instance-of v3, v2, Lcom/android/settings/development/OnActivityResultListener;

    if-eqz v3, :cond_1

    .line 113
    check-cast v2, Lcom/android/settings/development/OnActivityResultListener;

    .line 114
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settings/development/OnActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 131
    const-class p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mVolumeCallback:Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings$VolumePreferenceCallback;

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoAddFooterPreference(Z)V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDetach()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 142
    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/as/audio/SecVolumeSeekBarPreferenceController;->setCallback(Lcom/samsung/android/settings/as/widget/SecVolumeSeekBarPreference$Callback;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundSettings;->mSystemController:Lcom/samsung/android/settings/as/audio/SecSystemVolumePreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
