.class Lcom/samsung/android/settings/activekey/DedicatedAppView$1;
.super Landroid/os/Handler;
.source "DedicatedAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/activekey/DedicatedAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmLoadAppListTask(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView$LoadAppListTask;->add()V

    goto/16 :goto_1

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v3}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v3}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v3}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$1;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {v0}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmAppPickerView(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroidx/apppickerview/widget/AppPickerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->refreshUI(I)V

    .line 252
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
