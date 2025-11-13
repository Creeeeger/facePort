.class Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "AppSplitViewSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;
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
        "Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)V

    return-void
.end method

.method private declared-synchronized loadAppList()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->getSplitActivityApplications(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 247
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 248
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 251
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Landroid/content/pm/ApplicationInfo;)Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;
    .locals 2

    .line 255
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;-><init>(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow-IA;)V

    .line 256
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    .line 257
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mUid:I

    .line 258
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmSupportEmbedActivityPackages(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmSupportEmbedActivityPackages(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/List;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 259
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    .line 260
    iput p0, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mState:I

    goto :goto_0

    .line 262
    :cond_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p0

    iget-object p1, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mPackage:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;->mState:I

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->doInBackground([Ljava/lang/Object;)Ljava/util/Map;

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
            "Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 210
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 226
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 233
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 234
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/CustomListAdapter;->initialize(Ljava/util/List;)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAdapter(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$AppPickerCustomListAdapter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setCustomAdapter(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 236
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(I)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem(I)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 239
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;->-$$Nest$fputmSupportEmbedActivityPackages(Lcom/samsung/android/settings/usefulfeature/AppSplitViewSettings;Ljava/util/List;)V

    return-void
.end method
