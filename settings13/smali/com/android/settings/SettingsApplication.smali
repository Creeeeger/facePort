.class public Lcom/android/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# instance fields
.field private mHomeActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/homepage/SettingsHomepageActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6KZwlP5axFGQGlIn9eZ7NmFr-pI(Lcom/android/settings/SettingsApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsApplication;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$w0GR8bwaNxkriTLqvZ8nQBlkTpE(Lcom/android/settings/SettingsApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsApplication;->lambda$onCreate$1()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private initializeClasses()V
    .locals 1

    const-string v0, "SettingsApplication#Rune_Init"

    .line 137
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/samsung/android/settings/Rune;->getCountryCode()Ljava/lang/String;

    .line 139
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#Utils_Init"

    .line 142
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/settings/Utils;->readCountryCode()Ljava/lang/String;

    .line 144
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#AudioRune_Init"

    .line 146
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 147
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#LockUtils_Init"

    .line 152
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isCameraCoverAttached(Landroid/content/Context;)Z

    .line 156
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#CoordinatorLayout_init"

    .line 158
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-direct {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#Toolbar_init"

    .line 162
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroidx/appcompat/widget/Toolbar;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#RecyclerView_init"

    .line 166
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#KnoxUtils_Init"

    .line 170
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const/16 v0, 0x400

    .line 171
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    .line 174
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#BT_Init"

    .line 176
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 177
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 181
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    const-string v0, "SettingsApplication#CommandSdk.setHandler"

    .line 94
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/samsung/android/sdk/command/CommandSdk;->getInstance()Lcom/samsung/android/sdk/command/CommandSdk;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/actions/SettingsCommandActionHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/command/CommandSdk;->setHandler(Lcom/samsung/android/sdk/command/provider/ICommandActionHandler;)V

    .line 96
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#BixbyRoutineActionHandler"

    .line 98
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/samsung/android/sdk/routines/v3/RoutineSdkProvider;->getInstance()Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;

    invoke-direct {v1}, Lcom/samsung/android/settings/wifi/mobileap/routine/WifiApConditionHandler;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;->getInstance()Lcom/samsung/android/settings/bixbyroutinehandler/BixbyRoutineActionHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineSdk;->setHandler(Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineConditionHandler;Lcom/samsung/android/sdk/routines/v3/interfaces/RoutineActionHandler;)V

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    const-string v0, "SettingsApplication#printSamsungAnalytics"

    .line 102
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/android/settings/SettingsApplication;->printSamsungAnalytics()V

    .line 104
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    const-string v0, "SettingsApplication#initializeClasses"

    .line 108
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/SettingsApplication;->initializeClasses()V

    .line 110
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method private printSamsungAnalytics()V
    .locals 0

    .line 187
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->init(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method public getHomeActivity()Lcom/android/settings/homepage/SettingsHomepageActivity;
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/homepage/SettingsHomepageActivity;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "SettingsApplication#onCreate"

    .line 57
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 59
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 63
    invoke-static {}, Landroid/app/Application;->getProcessName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings:remote"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void

    :cond_0
    const-string v0, "SettingsApplication#ActivityEmbeddingRulesController"

    .line 73
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 92
    new-instance v0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 107
    new-instance v0, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsApplication$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/SettingsApplication;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 115
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 129
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 130
    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->getInstance()Lcom/android/settingslib/applications/AppIconCacheManager;

    invoke-static {}, Lcom/android/settingslib/applications/AppIconCacheManager;->release()V

    return-void
.end method

.method public setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/SettingsApplication;->mHomeActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
