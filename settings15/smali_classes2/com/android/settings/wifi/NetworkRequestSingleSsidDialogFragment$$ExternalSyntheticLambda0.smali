.class public final synthetic Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget p2, p0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/NetworkRequestSingleSsidDialogFragment;

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->mActivity:Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-interface {p1, p2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    const p1, 0x7f14194d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog$1(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
