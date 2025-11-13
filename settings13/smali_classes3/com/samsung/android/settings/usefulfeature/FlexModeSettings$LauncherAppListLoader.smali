.class Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "FlexModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LauncherAppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)V

    return-void
.end method

.method private declared-synchronized loadAppList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 300
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 302
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 303
    new-instance v3, Landroid/os/UserHandle;

    .line 304
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 305
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 306
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 307
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 308
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 311
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;
    .locals 5

    .line 315
    new-instance p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;-><init>(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow-IA;)V

    .line 316
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 317
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mUid:I

    .line 318
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/view/SemWindowManager;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mControllable:Z

    and-int/lit8 v1, p1, 0x10

    const/16 v2, 0x10

    const-string v3, " / Type : "

    const-string v4, "FlexModeSettings"

    if-ne v1, v2, :cond_0

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SUPPORTS_FLEX_MODE APP : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget p1, Lcom/android/settings/R$string;->sec_flex_mode_panel_summary_flex_mode:I

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mSummaryResId:I

    goto/16 :goto_0

    :cond_0
    and-int/lit8 v1, p1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 325
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Home launcher APP : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget p1, Lcom/android/settings/R$string;->sec_flex_mode_panel_summary_home_launcher:I

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mSummaryResId:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 328
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not Support MW APP : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    sget p1, Lcom/android/settings/R$string;->sec_flex_mode_panel_summary_multi_window:I

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mSummaryResId:I

    goto :goto_0

    .line 331
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUPPORTS_FLEX_PANEL APP : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 332
    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mControllable:Z

    .line 333
    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mType:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    move v0, p1

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;->mIsEnabled:Z

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 253
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->doInBackground([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 253
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/CustomListAdapter;->initialize(Ljava/util/List;)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$AppPickerCustomListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView;->setCustomAdapter(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(I)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem(I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 278
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    .line 279
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/settings/R$string;->sec_flex_mode_show_button_in_apps_title:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 278
    invoke-virtual {v0, v4, v3}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    const-string v3, "show_setting_icon"

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 290
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHighlightKey(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 294
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/FlexModeSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
