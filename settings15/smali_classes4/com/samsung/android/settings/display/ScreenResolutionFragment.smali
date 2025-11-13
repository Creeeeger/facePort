.class public Lcom/samsung/android/settings/display/ScreenResolutionFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mContext:Landroid/content/Context;

.field public mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

.field public final mControllers:Ljava/util/List;

.field public mDesktopModeListener:Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;

.field public mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field public final mEntryValues:Ljava/util/ArrayList;

.field public final mMainTitleList:Ljava/util/ArrayList;

.field public mScreenChangeState:Z

.field public mScreenResolution:I

.field public mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

.field public mStrBtnFHD:Ljava/lang/String;

.field public mStrBtnHD:Ljava/lang/String;

.field public mStrBtnWQHD:Ljava/lang/String;

.field public final mSubTitleList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    const-string/jumbo v1, "screen_resolution_seekbar"

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mController:Lcom/samsung/android/settings/display/controller/SecScreenResolutionSingleChoiceController;

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mControllers:Ljava/util/List;

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenResolutionFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1d10

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701e4

    return p0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView;->mDrawLastRoundedCorner:Z

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d07d3

    invoke-direct {v0, v2, v3}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->setPreview$1()V

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selected_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    :goto_0
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const-string/jumbo p1, "screen_resolution_seekbar"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f142008

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f142004

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v1, 0x7f14200f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/16 v4, 0x4d2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%d"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    int-to-float v5, p1

    int-to-float v6, v1

    div-float/2addr v5, v6

    const v6, 0x3fe38e39

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    const-string v7, "+"

    invoke-static {v5, v6, v7}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f14200a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v7, 0x7f142006

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f142011

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-static {v8}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    const/16 v9, 0x5a0

    if-ne v1, v9, :cond_5

    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    move v5, p1

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, p1

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    int-to-double v3, v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v9, v3, v6

    double-to-int v9, v9

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " x "

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v10, v5

    mul-double/2addr v6, v10

    double-to-int v6, v6

    int-to-long v6, v6

    invoke-virtual {v8, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v3, v12

    double-to-int v3, v3

    int-to-long v3, v3

    invoke-virtual {v8, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-double/2addr v10, v12

    double-to-int v3, v10

    int-to-long v3, v3

    invoke-virtual {v8, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-long v10, v1

    invoke-virtual {v8, v10, v11}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v4, v5

    invoke-virtual {v8, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :catch_0
    const-string p1, "ScreenResolutionFragment"

    const-string v1, "getInitialDisplaySize() exception!!!"

    invoke-static {p1, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mEntryValues:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mMainTitleList:Ljava/util/ArrayList;

    invoke-direct {p1, v1, v2}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;-><init>(Ljava/util/List;Ljava/util/List;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mSubTitleList:Ljava/util/ArrayList;

    iput-object v1, p1, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->mSubTitleList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/RadioItemDataInfo$Builder;->build()Lcom/samsung/android/settings/widget/RadioItemDataInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setRadioItemDataInfo(Lcom/samsung/android/settings/widget/RadioItemDataInfo;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsColorFilterEnabled:Z

    iput-boolean v0, p1, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->mIsDividerEnabled:Z

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetRoundedBg(I)V

    new-instance p1, Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecButtonPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1409b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mTitle:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    new-instance v0, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$2;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V

    iput-object v0, p1, Lcom/samsung/android/settings/widget/SecButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    const-string/jumbo p1, "screen_resolution_help_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d11

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    new-instance v1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$3;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->setPreview$1()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeListener:Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;

    invoke-virtual {v0, p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue$1()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenChangeState:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mApplyButton:Lcom/samsung/android/settings/widget/SecButtonPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const-string v1, "desktopmode"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;-><init>(Lcom/samsung/android/settings/display/ScreenResolutionFragment;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mDesktopModeListener:Lcom/samsung/android/settings/display/ScreenResolutionFragment$1;

    invoke-virtual {v0, v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    :cond_2
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolutionButton:Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/SecHorizontalRadioPreference;->getCurrentValue$1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "selected_value"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "selected_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenResolution(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mScreenResolution:I

    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setPreview$1()V
    .locals 4

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iget-object v0, v0, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0a0d12

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f060738

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    const v1, 0x7f0a070c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a062b

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnFHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a11c2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mStrBtnWQHD:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, 0x7f0a0d0d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenResolutionFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f08082d

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
