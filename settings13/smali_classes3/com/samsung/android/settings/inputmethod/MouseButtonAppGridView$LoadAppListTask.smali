.class Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "MouseButtonAppGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadAppListTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)V

    return-void
.end method

.method private declared-synchronized loadAppList()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    const/4 v2, 0x0

    .line 111
    new-instance v3, Landroid/os/UserHandle;

    .line 112
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 111
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 113
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

    .line 114
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 117
    invoke-direct {p0, v3, v2}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->makeAppRow(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 120
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private makeAppRow(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;
    .locals 2

    .line 124
    new-instance v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;-><init>(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow-IA;)V

    .line 125
    iput-object p1, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    .line 126
    iput-object p2, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmMouseButtonType(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/inputmethod/MouseFunctionKeyInfo;->getMouseFunctionKeyApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 128
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 129
    iput-boolean p0, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mState:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 131
    iput-boolean p0, v0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;->mState:Z

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->doInBackground([Ljava/lang/Void;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->loadAppList()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 83
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->onPostExecute(Ljava/util/Map;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$AppRow;",
            ">;)V"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmLoading(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v2}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppRows(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x7

    invoke-virtual {p1, v2, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmLoading(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;->-$$Nest$fgetmAppPickerGridView(Lcom/samsung/android/settings/inputmethod/MouseButtonAppGridView;)Lcom/samsung/android/settings/usefulfeature/AppGridView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
