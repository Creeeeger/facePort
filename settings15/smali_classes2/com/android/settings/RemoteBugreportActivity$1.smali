.class public final Lcom/android/settings/RemoteBugreportActivity$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/RemoteBugreportActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/RemoteBugreportActivity;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/RemoteBugreportActivity$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/android/settings/RemoteBugreportActivity$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {p2, p1, v0, v1}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/RemoteBugreportActivity$1;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
