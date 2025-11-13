.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->cancel()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment$createDialog$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->callback:Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;->onOk()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->clearDataFromViewModel()V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
