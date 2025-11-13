.class Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;
.super Landroid/os/AsyncTask;
.source "CameraCutoutFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/CameraCutoutFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CutoutAppListLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;)V

    return-void
.end method

.method private declared-synchronized loadAppsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/CameraCutoutFragment;I)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 322
    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmLauncherApps(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/pm/LauncherApps;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmUserInfo(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/pm/SemUserInfo;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Landroid/content/pm/SemUserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 322
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    const-string v2, "CameraCutoutFragment"

    const-string v3, "  launchable activities:"

    .line 324
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    const-string v3, "CameraCutoutFragment"

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 329
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.android.settings"

    .line 330
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v5, v0, v3, v2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$mloadAppRow(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/LauncherActivityInfo;)Lcom/samsung/android/settings/display/CameraCutoutFragment$AppRow;

    move-result-object v2

    .line 341
    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmItemCount(Lcom/samsung/android/settings/display/CameraCutoutFragment;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fputmItemCount(Lcom/samsung/android/settings/display/CameraCutoutFragment;I)V

    .line 343
    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmRows(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v0, "CameraCutoutFragment"

    const-string v1, "Finish getting ApplicationInfo"

    .line 345
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 274
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->doInBackground([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    .line 284
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->loadAppsList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 274
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageListTemp(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 294
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 295
    new-instance p1, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v2

    .line 298
    invoke-virtual {v2}, Landroidx/apppickerview/widget/AppPickerView;->getAppPickerIconLoader()Landroidx/apppickerview/widget/AppPickerIconLoader;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x2

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/display/CameraCutoutFragment$CustomListViewAdapter;-><init>(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroid/content/Context;IILandroidx/apppickerview/widget/AppPickerIconLoader;)V

    .line 299
    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/CustomListAdapter;->initialize(Ljava/util/List;)V

    .line 300
    iget-object v2, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/apppickerview/widget/AppPickerView;->setCustomAdapter(Landroidx/apppickerview/widget/AbsAdapter;)V

    .line 301
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(I)V

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->addCustomViewItem(I)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->addSeparator(I)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/display/CameraCutoutFragment;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmPackageList(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 307
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmLoadingPanel(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object p0, p0, Lcom/samsung/android/settings/display/CameraCutoutFragment$CutoutAppListLoader;->this$0:Lcom/samsung/android/settings/display/CameraCutoutFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/display/CameraCutoutFragment;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/display/CameraCutoutFragment;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
