.class Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "DedicatedAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/DedicatedAppView;
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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized add()V
    .locals 2

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 256
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    .line 266
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 256
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v2, v2}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;IZ)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 275
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$msetupOnBindListener(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 279
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 280
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmHandler(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmProgressBar(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 260
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
