.class Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;
.super Landroid/database/ContentObserver;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->registerWksObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 1009
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1010
    iget-object p1, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p1}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$fgetmWirelessKeyboardShareDBUtil(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/inputmethod/WirelessKeyboardShareDBUtil;->getChangedType()I

    move-result p1

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DB changed type is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhysicalKeyboardFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;->-$$Nest$fgetmWirelessKeyboardShareUiHandler(Lcom/samsung/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
