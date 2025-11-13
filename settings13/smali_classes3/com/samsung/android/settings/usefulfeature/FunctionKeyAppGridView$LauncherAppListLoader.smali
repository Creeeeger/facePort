.class Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;
.super Landroid/os/AsyncTask;
.source "FunctionKeyAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;
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
        "Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)V

    return-void
.end method

.method private isBlockList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmBlockList(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 192
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmBlockList(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/ArrayList;

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

    .line 193
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    return v3

    .line 196
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
            "Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 159
    new-instance v3, Landroid/os/UserHandle;

    .line 160
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 159
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 161
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

    .line 162
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 163
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->isBlockList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 167
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, -0x1

    .line 168
    invoke-direct {p0, v3, v2, v4}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 171
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;
    .locals 2

    .line 175
    new-instance v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;-><init>(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow-IA;)V

    .line 176
    iput-object p1, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    .line 177
    iput-object p2, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyInfo;->getFunctionKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 180
    iput-boolean p0, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mState:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 182
    iput-boolean p0, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mState:Z

    .line 184
    :goto_0
    iput p3, v0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;->mIcon:I

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->doInBackground([Ljava/lang/Object;)Ljava/util/Map;

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
            "Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 122
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmLoading(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 139
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 142
    sget p1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v1, 0x1afa4

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportFlashlight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Ljava/util/Map;

    move-result-object p1

    sget v1, Lcom/android/settings/R$drawable;->sec_xcover_key_torch:I

    const-string v2, "torch"

    invoke-direct {p0, v2, v2, v1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->makeAppRow(Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$AppRow;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->xcover_key_shortcut_torch:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->addPackage(ILjava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setPackageName(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->setActivityName(Ljava/lang/String;)V

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 151
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmLoading(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView$LauncherAppListLoader;->this$0:Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/usefulfeature/FunctionKeyAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
