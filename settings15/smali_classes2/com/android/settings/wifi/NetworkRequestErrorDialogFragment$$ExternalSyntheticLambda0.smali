.class public final synthetic Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget p1, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->rejectNetworkRequestAndFinish()V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;

    iget-object p2, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mHandler:Lcom/android/settings/wifi/NetworkRequestDialogActivity$1;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mShowingErrorDialog:Z

    iget-boolean p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mIsSpecifiedSsid:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mMatchedConfig:Landroid/net/wifi/WifiConfiguration;

    const p1, 0x7f141952

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->showProgressDialog$1(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogActivity;->mDialogFragment:Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    const-string p2, "NetworkRequestDialogActivity"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/wifi/NetworkRequestDialogBaseFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
