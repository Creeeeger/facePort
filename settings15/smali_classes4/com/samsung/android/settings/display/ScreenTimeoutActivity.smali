.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field public mContext:Landroid/content/Context;

.field public mDexMode:Z

.field public mHasFooterView:Z

.field public mItemEnabled:Z

.field public mItemEnabledPowerSaving:Z

.field public mLayoutPowerSavingDescription:Landroid/view/View;

.field public mMaxTimeout:J

.field public mPowerSavingDescription:Lcom/android/settingslib/widget/LayoutPreference;

.field public mPowerSavingDescriptionInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

.field public mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

.field public mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

.field public mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

.field public mScreenTimeoutView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    const v1, 0x7f1701e6

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabledPowerSaving:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    return-void
.end method


# virtual methods
.method public final changeLowBatteryUI()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "scale"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "status"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v2, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/16 v2, 0x64

    if-ltz v1, :cond_1

    if-lez v3, :cond_1

    mul-int/2addr v1, v2

    div-int v2, v1, v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    if-gt v2, v1, :cond_2

    if-nez v0, :cond_2

    iput-boolean v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Low battery: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - isCharging: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTimeoutActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iput-boolean v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    const p0, 0x7f142015

    return p0
.end method

.method public final getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenTimeoutActivity"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    :cond_0
    sget-object p0, Lcom/samsung/android/settings/display/SecDisplayUtils;->SIGNATURES:[Landroid/content/pm/Signature;

    sget-object p0, Lcom/samsung/android/settings/Rune;->COMMON_CONFIG_PACKAGE_NAME_SMART_MANAGER:Ljava/lang/String;

    const/16 p0, 0x1074

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f1701e6

    return p0
.end method

.method public final getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "top_level_display"

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Screen_timeout_dex_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    cmp-long p1, v4, v2

    const/4 v2, 0x1

    if-lez p1, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->changeLowBatteryUI()V

    const-string/jumbo p1, "screen_timeout_layout"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0d13

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v3, 0xf

    invoke-virtual {p1, v3}, Landroid/view/View;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060738

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    const v4, 0x7f0a0d14

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    new-instance p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v4}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;)V

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    iput-boolean v4, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->mIsVisibleFooterViewDivider:Z

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_2
    const-string/jumbo p1, "power_saving_description"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescription:Lcom/android/settingslib/widget/LayoutPreference;

    const-string/jumbo p1, "power_saving_description_inset"

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescriptionInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescription:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d75

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mLayoutPowerSavingDescription:Landroid/view/View;

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescription:Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p1, p1, Lcom/android/settingslib/widget/LayoutPreference;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0d48

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v2, "11"

    const-string v3, "99"

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f142732

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    invoke-static {v0, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v4, v6, :cond_5

    if-eq v5, v6, :cond_5

    add-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move v7, v5

    move v5, v4

    move v4, v7

    :goto_1
    const-string v6, ""

    invoke-virtual {v0, v2, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v4, v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$3;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)V

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2, v5, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f0606d5

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v0, v5, v4, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    :cond_1
    return-void
.end method

.method public final onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    iput-wide v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->updateRelatedGUIByPowerSaving()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    if-nez v1, :cond_3

    new-instance v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pms_settings_screen_time_out_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingObserver:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onStart()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->changeLowBatteryUI()V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method

.method public final setScreenTimeoutAdapter(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "timeout_dex"

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_0

    :goto_1
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-wide v0, p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mCurrentTimeout:J

    cmp-long p1, v7, v0

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, v7, v8, p1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(IJLandroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v7, v8, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(IJLandroid/content/Context;)[Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    move-object v5, p1

    move-object v6, v0

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-boolean v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Z[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method public final updateRelatedGUIByPowerSaving()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pms_settings_screen_time_out_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabledPowerSaving:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mLayoutPowerSavingDescription:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescriptionInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabledPowerSaving:Z

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mLayoutPowerSavingDescription:Landroid/view/View;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mPowerSavingDescriptionInsetCategory:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_3
    :goto_0
    return-void
.end method
