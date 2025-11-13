.class Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "RotateAppsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;
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
        "Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)V

    return-void
.end method

.method private declared-synchronized loadAppList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 245
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 248
    new-instance v3, Landroid/os/UserHandle;

    .line 249
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 248
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    .line 251
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 252
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->EXCLUSIVE_ROTATE_APP_LIST:Ljava/util/HashSet;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;
    .locals 1

    .line 263
    new-instance p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;-><init>(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow-IA;)V

    .line 264
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 265
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mUid:I

    .line 266
    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPackageOrientation(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mState:I

    .line 267
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getPolicyFromLegacyFlag(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    .line 268
    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getOrientationSwitchState(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / policy : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mPolicyFlag:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / switch : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;->mSwitchState:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RotateAppsSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->doInBackground([Ljava/lang/Object;)Ljava/util/Map;

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
            "Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;",
            ">;"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 213
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/CustomListAdapter;->initialize(Ljava/util/List;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$AppPickerCustomListAdapter;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/apppickerview/widget/AppPickerView;->setCustomAdapter(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(I)V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem(I)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 238
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 218
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/RotateAppsSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
