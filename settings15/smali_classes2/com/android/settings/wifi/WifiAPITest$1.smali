.class public final Lcom/android/settings/wifi/WifiAPITest$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/wifi/WifiAPITest;

.field public final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiAPITest;Landroid/widget/EditText;I)V
    .locals 0

    iput p3, p0, Lcom/android/settings/wifi/WifiAPITest$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/android/settings/wifi/WifiAPITest;->netid:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    :catch_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    :try_start_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/android/settings/wifi/WifiAPITest;->netid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p0, p0, Lcom/android/settings/wifi/WifiAPITest$1;->this$0:Lcom/android/settings/wifi/WifiAPITest;

    iget-object p1, p0, Lcom/android/settings/wifi/WifiAPITest;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p0, p0, Lcom/android/settings/wifi/WifiAPITest;->netid:I

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
