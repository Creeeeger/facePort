.class public Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenTimeoutDockingActivity.java"

# interfaces
.implements Lcom/android/settingslib/widget/OnMainSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;,
        Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

.field private mContext:Landroid/content/Context;

.field private mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;

.field private mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutView:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;)Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetScreenTimeoutAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;)Landroid/content/ContentResolver;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private initUI()V
    .locals 6

    const-string v0, "screen_timeout_docking_layout"

    .line 97
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 99
    sget v1, Lcom/android/settings/R$id;->screen_timeout_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 101
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->screen_timeout_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    .line 104
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 106
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 107
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 108
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$VerticalLineItemDecoration;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 113
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method private isEnabled()Z
    .locals 2

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dock_screen_off_timeout_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private registerObserver()V
    .locals 3

    .line 338
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 352
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setScreenTimeoutAdapter(Ljava/lang/Long;)V
    .locals 8

    .line 148
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v0, p1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 151
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity$ScreenTimeoutAdapter;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 153
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 359
    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 76
    sget p0, Lcom/android/settings/R$string;->screen_timeout_docking:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 71
    const-class p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1074

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 81
    sget p0, Lcom/android/settings/R$xml;->sec_screen_timeout_docking_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    if-eqz p1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    sget v0, Lcom/android/settings/R$string;->switch_on_text:I

    sget v1, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setSwitchBarText(II)V

    .line 128
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 129
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->initUI()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 332
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->unregisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 323
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 325
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dock_screen_off_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 326
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->registerObserver()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 61
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onStart()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dock_screen_off_timeout_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 141
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutDockingActivity;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setChecked(Z)V

    return-void
.end method
