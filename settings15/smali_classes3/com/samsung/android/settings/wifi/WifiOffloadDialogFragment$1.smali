.class public final Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "wifi_offload_network_notify"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialogFragment;->mListener:Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;->-$$Nest$mdoFinish(Lcom/samsung/android/settings/wifi/WifiOffloadDialog;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
