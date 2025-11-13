.class public Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;
.super Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mChooseDifferentNetwork:Landroid/widget/Button;

.field public mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

.field public mLatestStatusCode:I

.field public mWifiApPictureView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x63b

    return p0
.end method

.method public final isEasyConnectHandshaking()Z
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    const-string v2, "store"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {p0, v2, v0, v1, p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    const-string v1, "modelClass"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-boolean p0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isFooterAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_latest_status_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object v1

    const-string v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "factory"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "defaultCreationExtras"

    invoke-static {v1, v2, p1, v0, v1}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p1

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    :cond_1
    iget-object v0, p1, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mStatusCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p0, 0x7f0d0c1e

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mClickChooseDifferentNetworkListener:Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$OnClickChooseDifferentNetworkListener;

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_latest_status_code"

    iget v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f0803d4

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mUriParserResults:Landroid/net/wifi/UriParserResults;

    invoke-virtual {v0}, Landroid/net/wifi/UriParserResults;->getInformation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const v0, 0x7f143535

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mGlifLayout:Lcom/google/android/setupdesign/GlifLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->updateSummary$2$1()V

    const v0, 0x7f0a1182

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v0, 0x7f0a0373

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1408bf

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V

    iput-object v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f143547

    invoke-virtual {p1, v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V

    iput-object v0, p1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_4

    iget p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showSuccessUi(Z)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->showErrorUi(ILandroid/content/Intent;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final showErrorUi(ILandroid/content/Intent;Z)V
    .locals 6

    const v0, 0x7f143536

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected Wi-Fi DPP error"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const v0, 0x7f143540

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f14353b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    if-eqz p3, :cond_0

    return-void

    :cond_0
    iget p2, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopEasyConnectSession()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->startWifiDppConfiguratorInitiator()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried restarting EasyConnectSession but stillreceiving EASY_CONNECT_EVENT_FAILURE_BUSY"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5
    const v0, 0x7f14353d

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    const v0, 0x7f14353a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-static {v0}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14353c

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Wi-Fi DPP configurator used a non-PSK/non-SAEnetwork to handshake"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_9
    const v0, 0x7f143537

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    const v0, 0x7f143538

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    const v0, 0x7f143539

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const v3, 0x7f143533

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v2, 0x7f080e22

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    const/4 v3, -0x3

    if-eq p1, v3, :cond_3

    const/4 v3, -0x1

    if-eq p1, v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f141f13

    invoke-virtual {v3, v4, v5}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f140d53

    invoke-virtual {v0, v3, v4}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    iget-object v3, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {v3, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    :goto_1
    new-instance v3, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;Landroid/content/Intent;)V

    iput-object v3, v0, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f143548

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object p2, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    invoke-virtual {p2, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p3, :cond_6

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch -0xc
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showSuccessUi(Z)V
    .locals 4

    const v0, 0x7f0803d2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderIconImageResource(I)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const v2, 0x7f14354a

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setHeaderTitle(I[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->setProgressBarShown(Z)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mWifiApPictureView:Landroid/widget/ImageView;

    const v3, 0x7f080e23

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mChooseDifferentNetwork:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f143528

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mLeftButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V

    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f140d53

    invoke-virtual {v1, v2, v3}, Lcom/google/android/setupcompat/template/FooterButton;->setText(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mRightButton:Lcom/google/android/setupcompat/template/FooterButton;

    new-instance v2, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;I)V

    iput-object v2, v1, Lcom/google/android/setupcompat/template/FooterButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setVisibility(I)V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->mLatestStatusCode:I

    :cond_0
    return-void
.end method

.method public final startWifiDppConfiguratorInitiator()V
    .locals 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiDppQrCode:Lcom/android/settings/wifi/dpp/WifiQrCode;

    iget-object v2, v0, Lcom/android/settings/wifi/dpp/WifiQrCode;->mQrCode:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object v0, v0, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    iget v3, v0, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mNetworkId:I

    invoke-interface {p0}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object v0

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v1

    invoke-interface {p0}, Landroidx/lifecycle/HasDefaultViewModelProviderFactory;->getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;

    move-result-object p0

    const-string v4, "store"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "factory"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "defaultCreationExtras"

    invoke-static {p0, v4, v0, v1, p0}, Lcom/android/settings/applications/intentpicker/ProgressDialogFragment$$ExternalSyntheticOutline0;->m(Landroidx/lifecycle/viewmodel/CreationExtras;Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;

    move-result-object p0

    const-class v0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    invoke-static {v0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/viewmodel/ViewModelProviderImpl;->getViewModel$lifecycle_viewmodel_release(Lkotlin/reflect/KClass;Ljava/lang/String;)Landroidx/lifecycle/ViewModel;

    move-result-object p0

    check-cast p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;->mIsWifiDppHandshaking:Z

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroidx/lifecycle/AndroidViewModel;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    new-instance v6, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel$EasyConnectDelegateCallback;-><init>(Lcom/android/settings/wifi/dpp/WifiDppInitiatorViewModel;)V

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/wifi/WifiManager;->startEasyConnectAsConfiguratorInitiator(Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Local and anonymous classes can not be ViewModels"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateSummary$2$1()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/dpp/WifiDppAddDeviceFragment;->isEasyConnectHandshaking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    const v0, 0x7f143548

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/dpp/WifiDppQrCodeBaseFragment;->mSummary:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;

    iget-object v1, v1, Lcom/android/settings/wifi/dpp/WifiDppConfiguratorActivity;->mWifiNetworkConfig:Lcom/android/settings/wifi/dpp/WifiNetworkConfig;

    invoke-static {v1}, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->isValidConfig(Lcom/android/settings/wifi/dpp/WifiNetworkConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/settings/wifi/dpp/WifiNetworkConfig;->mSsid:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f14352b

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid Wi-Fi network for configuring"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
