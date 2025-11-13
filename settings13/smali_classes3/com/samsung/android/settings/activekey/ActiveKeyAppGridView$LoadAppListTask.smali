.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "ActiveKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    return-void
.end method

.method private isBlockList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmBlockList(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmBlockList(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 378
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_3
    return v1
.end method

.method private declared-synchronized loadAppList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 340
    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 341
    new-instance v3, Landroid/os/UserHandle;

    .line 342
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 341
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 343
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

    .line 344
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 345
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 346
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->isBlockList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 349
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    .line 350
    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 353
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;
    .locals 2

    .line 357
    new-instance v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;-><init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow-IA;)V

    .line 358
    iput-object p1, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    .line 359
    iput-object p2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    .line 360
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyInfo;->getActiveKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 361
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 362
    iput-boolean p0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mState:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 364
    iput-boolean p0, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mState:Z

    .line 366
    :goto_0
    iput p3, v0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;->mIcon:I

    return-object v0
.end method


# virtual methods
.method protected add()V
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$mstopLoading(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 387
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/usefulfeature/AppGridView;->draw(Landroid/content/Context;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 275
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->doInBackground([Ljava/lang/Object;)Ljava/util/Map;

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
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 275
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$mstopLoading(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 291
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 293
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverTopKeySetting()Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "torch"

    if-eqz p1, :cond_4

    .line 294
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v2, Lcom/android/settings/R$drawable;->sec_xcover_key_torch:I

    invoke-direct {p0, v1, v1, v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 296
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 298
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 301
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->sec_xcover_key_home:I

    const-string v2, "home"

    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->xcover_key_shortcut_home:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 308
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->sec_xcover_key_back_icon:I

    const-string v2, "back"

    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->xcover_key_shortcut_back:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {p1, v4, v1}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 316
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 317
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->sec_xcover_key_voice_to_text_im:I

    const-string v2, "quickMessageSender"

    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->xcover_key_shortcut_quick_message_sender:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 320
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    goto :goto_0

    .line 324
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->hasXcoverKeySetting()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 325
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v2, Lcom/android/settings/R$drawable;->sec_xcover_key_torch:I

    invoke-direct {p0, v1, v1, v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {v2}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 327
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 328
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 329
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 332
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 333
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$mstartLoading(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)V

    return-void
.end method
