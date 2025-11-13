.class Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;
.super Ljava/lang/Object;
.source "DedicatedAppView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView$2;Ljava/lang/String;I)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_2

    .line 306
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p2

    .line 307
    invoke-static {p1, p2}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    .line 309
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    iget p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    invoke-virtual {p1, p2}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object v0, v0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    iget v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    invoke-virtual {v0, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/DedicatedAppView;)Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    invoke-static {p2}, Lcom/samsung/android/settings/activekey/DedicatedAppView;->-$$Nest$fgetmPressType(Lcom/samsung/android/settings/activekey/DedicatedAppView;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    .line 316
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Landroidx/apppickerview/widget/AppPickerView;->refresh()V

    return-void
.end method
