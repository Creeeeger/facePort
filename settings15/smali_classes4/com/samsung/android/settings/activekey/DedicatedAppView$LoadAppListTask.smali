.class public final Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->loadAppList(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPackageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v2, Landroidx/apppickerview/widget/AppPickerView;->mIsDividerVisible:Z

    const/4 v3, 0x4

    invoke-virtual {v0, v3, p1, v2}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    iput-boolean v2, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;->mSupportsChangeAnimations:Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v3, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    new-instance v4, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    invoke-direct {v4, v0, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;-><init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;Landroidx/apppickerview/widget/AppPickerView;)V

    invoke-virtual {v3, v4}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {v0, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mHandler:Lcom/samsung/android/settings/activekey/DedicatedAppView$1;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
