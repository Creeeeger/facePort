.class public final Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$position:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/activekey/DedicatedAppView$2;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p2, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p2, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    invoke-static {p2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->getDedicatedApp(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p2, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedApp(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    iget p2, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    invoke-virtual {p1, p2}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p2, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object v0, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p2, p2, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    iget v1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$position:I

    invoke-virtual {p1, v1}, Landroidx/apppickerview/widget/AppPickerView;->getAppLabelInfo(I)Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    move-result-object p1

    iget-object p1, p1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->mLabel:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->this$0:Lcom/samsung/android/settings/activekey/DedicatedAppView;

    iget-object p2, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mContext:Landroid/content/Context;

    iget p1, p1, Lcom/samsung/android/settings/activekey/DedicatedAppView;->mPressType:I

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->val$packageName:Ljava/lang/String;

    invoke-static {p2, p1, v0}, Lcom/samsung/android/settings/activekey/DedicatedAppInfo;->saveDedicatedAppLabel(Landroid/content/Context;ILjava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2$1;->this$1:Lcom/samsung/android/settings/activekey/DedicatedAppView$2;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/DedicatedAppView$2;->val$view:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Landroidx/apppickerview/widget/AppPickerView$3;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Landroidx/apppickerview/widget/AppPickerView$3;-><init>(Landroidx/apppickerview/widget/AppPickerView;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
