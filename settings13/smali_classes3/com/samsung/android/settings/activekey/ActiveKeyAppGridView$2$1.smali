.class Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;
.super Ljava/lang/Object;
.source "ActiveKeyAppGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->onBindViewHolder(Landroidx/apppickerview/widget/AppPickerView$ViewHolder;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$row:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;Ljava/lang/String;Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    iput-object p2, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->val$row:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 414
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p1}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "default_input_method"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->val$packageName:Ljava/lang/String;

    const-string v1, "quickMessageSender"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    invoke-static {p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->xcover_key_shortcut_quick_message_sender_warning:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->this$1:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;

    iget-object p1, p1, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2;->this$0:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;

    iget-object p0, p0, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$2$1;->val$row:Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView;->savePressActionApp(Lcom/samsung/android/settings/activekey/ActiveKeyAppGridView$AppRow;)V

    :goto_0
    return-void
.end method
