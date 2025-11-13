.class public Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ApplicationViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;
    }
.end annotation


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field final mAppName:Landroid/widget/TextView;

.field private mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mContext:Landroid/content/Context;

.field final mDisabled:Landroid/widget/TextView;

.field final mHeaderButton:Landroid/widget/Button;

.field final mHeaderText:Landroid/widget/TextView;

.field private mLastSortMode:I

.field private mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

.field final mSummary:Landroid/widget/TextView;

.field final mSummaryContainer:Landroid/view/View;

.field final mSwitch:Landroid/widget/Switch;

.field final mWidgetContainer:Landroid/view/ViewGroup;

.field private final silentIcon:Landroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$0XLfki5w6gBp33eMqhd4VBXj23Q(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->lambda$getSwitchOnClickListener$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSizeSummaryLoaderTask(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    const v0, 0x1020006

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    const v0, 0x1020010

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    .line 93
    sget v0, Lcom/android/settings/R$id;->appendix:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 94
    sget v0, Lcom/android/settings/R$id;->silent_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->silentIcon:Landroid/widget/ImageView;

    const v0, 0x1020040

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 97
    sget v0, Lcom/android/settings/R$id;->summary_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryContainer:Landroid/view/View;

    const v0, 0x1020018

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 104
    sget v0, Lcom/android/settings/R$id;->function_desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderText:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/android/settings/R$id;->button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$getSwitchOnClickListener$0(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/view/View;)V
    .locals 7

    .line 325
    check-cast p2, Landroid/view/ViewGroup;

    const v0, 0x1020040

    .line 326
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    .line 327
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v0}, Lcom/android/settingslib/applications/AppUtils;->isDeepSleepingEnable(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 329
    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 330
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 331
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->cancelDisablePolicy(Landroid/content/pm/ApplicationInfo;)V

    .line 332
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->sec_app_notification_deep_sleeping_toast_text:I

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    if-eqz p2, :cond_4

    .line 335
    invoke-virtual {p2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-virtual {p2}, Landroid/widget/Switch;->toggle()V

    .line 339
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 340
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v4

    .line 339
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/settings/notification/NotificationBackend;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)Z

    .line 341
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getNotificationsSentState(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->blocked:Z

    .line 344
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mLastSortMode:I

    invoke-static {v1, v0, v2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    :cond_2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "from"

    const-string v1, "app list"

    .line 348
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "On"

    goto :goto_0

    :cond_3
    const-string p1, "Off"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "turnOnOff"

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const p1, 0x8cb5

    .line 350
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "NSTE0005"

    invoke-static {p1, p2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method static newView(Landroid/view/ViewGroup;ZZ)Landroid/view/View;
    .locals 3

    .line 120
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isLargeText(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    sget v1, Lcom/android/settings/R$layout;->sec_apps_list_item_row_large:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$layout;->sec_apps_list_item_row:I

    :goto_0
    const/4 v2, 0x0

    .line 121
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x1020018

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    if-eqz v1, :cond_3

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 133
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_widget_preference_switch_with_divider:I

    .line 134
    invoke-virtual {p0, p2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/android/settings/R$layout;->sec_widget_preference_switch:I

    .line 137
    invoke-virtual {p0, p2, v1, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const/16 p0, 0x8

    .line 152
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private updateSummaryVisibility()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getContentDescriptionWithSwitch(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->comma:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_enable_text_app:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 536
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->sec_disable_text_app:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;
    .locals 1

    if-eqz p1, :cond_0

    .line 324
    new-instance v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setClickListnerInfo(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;I)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 319
    iput p3, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mLastSortMode:I

    return-void
.end method

.method setEnabled(Z)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 190
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz p0, :cond_0

    .line 191
    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method setHeaderButtonContents(ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {p0, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setHeaderButtonEnable(Z)V
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 375
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method setHeaderButtonVisible(I)V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderButton:Landroid/widget/Button;

    if-eqz p0, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method setHeaderText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setSummary(I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryVisibility()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryVisibility()V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 207
    :cond_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateDisableView(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 222
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 223
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->not_installed:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 231
    :cond_1
    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p1, :cond_2

    .line 233
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->disabled:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 229
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->sec_app_deep_sleeping:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 242
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    return-void
.end method

.method updateNotificationSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;ZZ)V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 307
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method updateSilentView(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 249
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->silentIcon:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 251
    :cond_0
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->silentIcon:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 6

    .line 256
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSizeText of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq p3, v1, :cond_2

    const/4 p2, 0x2

    if-eq p3, p2, :cond_1

    .line 269
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 266
    :cond_1
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 263
    :cond_2
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 272
    :cond_3
    iget-wide v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v4, -0x2

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 273
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 280
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    if-eqz v0, :cond_5

    .line 281
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    .line 284
    :cond_5
    new-instance v0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;-><init>(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSizeSummaryLoaderTask:Lcom/android/settings/applications/manageapplications/ApplicationViewHolder$SizeSummaryLoaderTask;

    .line 285
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void
.end method

.method updateSummaryContainer()V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 391
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 392
    :goto_1
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
