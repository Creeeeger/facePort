.class public final Lcom/samsung/android/settings/activekey/DedicatedAppView$1;
.super Landroid/os/Handler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mLoadAppListTask:Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mProgressBar:Landroid/view/ViewGroup;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v1, v1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/apppickerview/widget/AppPickerView$3;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroidx/apppickerview/widget/AppPickerView$3;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    iget-object v0, v0, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroidx/apppickerview/widget/AppPickerView$5;

    invoke-direct {v2, v0, v1}, Landroidx/apppickerview/widget/AppPickerView$5;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
