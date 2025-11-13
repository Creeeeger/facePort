.class Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;
.super Ljava/lang/Object;
.source "BluetoothBroadcastDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$optionList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$optionList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "list onClick ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BTBroadcastsDialog"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "list item ="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$optionList:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$optionList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p3, p1, :cond_0

    .line 96
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$optionList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->val$context:Landroid/content/Context;

    sget p3, Lcom/android/settings/R$string;->bluetooth_find_broadcast:I

    .line 99
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 100
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->-$$Nest$mlaunchFindBroadcastsActivity(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V

    goto :goto_0

    .line 102
    :cond_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog$1;->this$0:Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;

    invoke-static {p0}, Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;->-$$Nest$mlaunchMediaOutputBroadcastDialog(Lcom/android/settings/bluetooth/BluetoothBroadcastDialog;)V

    :goto_0
    return-void
.end method
