.class public Lcom/samsung/android/settings/display/ScreenTimeoutActivity;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ScreenTimeoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;,
        Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field private mContext:Landroid/content/Context;

.field private mDexMode:Z

.field private mHasFooterView:Z

.field private mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

.field private mItemEnabled:Z

.field private mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mMaxTimeout:J

.field private mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDexMode(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmItemEnabled(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTimeoutLoggingValue(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->getTimeoutLoggingValue(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetScreenTimeoutAdapter(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method private changeLowBatteryUI()V
    .locals 6

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "level"

    const/4 v2, -0x1

    .line 161
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 162
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "status"

    .line 163
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    const/16 v5, 0x64

    if-ltz v1, :cond_1

    if-lez v3, :cond_1

    mul-int/2addr v1, v5

    .line 168
    div-int v5, v1, v3

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    if-gt v5, v1, :cond_2

    if-nez v0, :cond_2

    .line 172
    iput-boolean v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    .line 173
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Low battery: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - isCharging: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ScreenTimeoutActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 175
    :cond_2
    iput-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemEnabled:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private getTimeoutLoggingValue(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x3

    return p0

    :sswitch_3
    const/4 p0, 0x2

    return p0

    :sswitch_4
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7530 -> :sswitch_4
        0xea60 -> :sswitch_3
        0x1d4c0 -> :sswitch_2
        0x493e0 -> :sswitch_1
        0x927c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private initUI()V
    .locals 6

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->changeLowBatteryUI()V

    const-string v0, "screen_timeout_layout"

    .line 136
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mLayoutPreference:Lcom/android/settingslib/widget/LayoutPreference;

    if-eqz v0, :cond_0

    .line 138
    sget v1, Lcom/android/settings/R$id;->screen_timeout_container:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0xf

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->screen_timeout_list:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v0, v2, v5, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 145
    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 147
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    .line 148
    iget-boolean v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;->setVisibleFooterViewDivider(Z)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mItemDecoration:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$VerticalLineItemDecoration;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->seslSetFillBottomEnabled(Z)V

    .line 153
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_0
    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 507
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 517
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 520
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private setScreenTimeoutAdapter(Ljava/lang/Long;)V
    .locals 10

    .line 184
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v0, v3, v4, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 186
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDexScreenTimeoutEntryandValue(Landroid/content/Context;JI)[Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 189
    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, v1}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getScreenTimeoutEntryandValue(Landroid/content/Context;Ljava/lang/Long;I)[Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v6, v0

    move-object v7, v1

    .line 192
    new-instance v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-boolean v5, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;-><init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Z[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;J)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mAdapter:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    .line 193
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 195
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    return-void
.end method

.method private unregisterObserver()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method public getFragmentTitleResId(Landroid/content/Context;)I
    .locals 0

    .line 112
    sget p0, Lcom/android/settings/R$string;->screen_timeout:I

    return p0
.end method

.method public getHierarchicalParentFragment(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 102
    const-class p0, Lcom/android/settings/DisplaySettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "ScreenTimeoutActivity"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 473
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    .line 475
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->getDualDisplayStatus(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const p0, 0xb7a5

    return p0

    :cond_1
    const/16 p0, 0x1074

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 117
    sget p0, Lcom/android/settings/R$xml;->sec_screen_timeout_settings:I

    return p0
.end method

.method public getTopLevelPreferenceKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "top_level_display"

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Screen_timeout_dex_mode"

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    .line 126
    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    .line 127
    invoke-virtual {p1, v2}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    cmp-long p1, v2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mHasFooterView:Z

    .line 131
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->initUI()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 466
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->unregisterObserver()V

    return-void
.end method

.method public onResume()V
    .locals 8

    .line 440
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 442
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mDexMode:Z

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x927c0

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeout_dex"

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->getStringFromDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, 0x7530

    const-string v3, "screen_off_timeout"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    const-string v2, "device_policy"

    .line 448
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 450
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v2

    .line 452
    iget-wide v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 456
    :cond_1
    iput-wide v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    .line 460
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Ljava/lang/Long;)V

    .line 461
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->registerObserver()V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->mMaxTimeout:J

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->changeLowBatteryUI()V

    .line 91
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStart()V

    return-void
.end method
