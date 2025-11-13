.class public final synthetic Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;

    packed-switch p1, :pswitch_data_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    :pswitch_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary$2$1()V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->showChooseSavedWifiNetworkFragment(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
