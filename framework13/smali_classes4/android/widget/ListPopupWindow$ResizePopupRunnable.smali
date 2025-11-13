.class Landroid/widget/ListPopupWindow$ResizePopupRunnable;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResizePopupRunnable"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0

    .line 1431
    iput-object p1, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ListPopupWindow;Landroid/widget/ListPopupWindow$ResizePopupRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/widget/ListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    .line 1435
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmIsDeviceDefault(Landroid/widget/ListPopupWindow;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1436
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v2, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget v2, v2, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v2, :cond_1

    .line 1438
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1439
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/DropDownListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    .line 1443
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getCount()I

    move-result v0

    iget-object v2, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v2}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/DropDownListView;->getChildCount()I

    move-result v2

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-static {v0}, Landroid/widget/ListPopupWindow;->-$$Nest$fgetmDropDownList(Landroid/widget/ListPopupWindow;)Landroid/widget/DropDownListView;

    move-result-object v0

    .line 1444
    invoke-virtual {v0}, Landroid/widget/DropDownListView;->getChildCount()I

    move-result v0

    iget-object v2, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget v2, v2, Landroid/widget/ListPopupWindow;->mListItemExpandMaximum:I

    if-gt v0, v2, :cond_1

    .line 1445
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    iget-object v0, v0, Landroid/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1446
    iget-object v0, p0, Landroid/widget/ListPopupWindow$ResizePopupRunnable;->this$0:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1450
    :cond_1
    :goto_0
    return-void
.end method
