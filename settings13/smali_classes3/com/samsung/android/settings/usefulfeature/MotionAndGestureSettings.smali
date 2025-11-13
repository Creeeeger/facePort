.class public Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MotionAndGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MotionAndGestureSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1db4

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 68
    sget p0, Lcom/android/settings/R$xml;->sec_motion_and_gesture_settings:I

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 79
    const-class p1, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/PalmSwipeToCapturePreferenceController;->updatePreference()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->mContext:Landroid/content/Context;

    return-void
.end method
