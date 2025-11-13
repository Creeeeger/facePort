.class public final Lcom/android/systemui/volume/view/warnings/WarningDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final displayManagerWrapper$delegate:Lkotlin/Lazy;

.field public final toastWrapper$delegate:Lkotlin/Lazy;

.field public final viewContext:Lcom/android/systemui/volume/view/context/ViewContext;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/context/ViewContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    new-instance p1, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController$displayManagerWrapper$2;-><init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/volume/view/warnings/WarningDialogController$toastWrapper$2;-><init>(Lcom/android/systemui/volume/view/warnings/WarningDialogController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->toastWrapper$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final showVolumeCSD100WarningDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState$1()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object p0

    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->VOLUME_CSD_100_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeCSD100WarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showVolumeLimiterDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState$1()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object p0

    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->MEDIA_VOLUME_LIMITER_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->toastWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/ToastWrapper;

    iget-object v2, v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    iput-object p0, v1, Lcom/android/systemui/volume/view/warnings/VolumeLimiterWarningDialog;->toastWrapper:Lcom/android/systemui/volume/util/ToastWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->initButtons()V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final showVolumeSafetyWarningDialog()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->viewContext:Lcom/android/systemui/volume/view/context/ViewContext;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getPanelState$1()Lcom/samsung/systemui/splugins/volume/VolumePanelState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->getCoverType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/WarningDialogController;->displayManagerWrapper$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getFrontCameraDisplay()Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;

    invoke-direct {v1, v2, p0, v3}, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object p0

    iget-object v0, v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningCameraViewPresentation;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object p0, v0, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v0}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningWalletMiniDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;->DEFAULT_SAFETY_VOLUME_WARNING:Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog$WarningDialogType;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningSideViewDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v1, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v1}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;-><init>(Landroid/content/Context;)V

    invoke-interface {v0}, Lcom/android/systemui/volume/view/context/ViewContext;->getStore$1()Lcom/android/systemui/volume/store/VolumePanelStore;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeSafetyWarningDialog;->storeInteractor:Lcom/android/systemui/volume/store/StoreInteractor;

    iput-object v0, v2, Lcom/android/systemui/volume/store/StoreInteractor;->store:Lcom/android/systemui/volume/store/VolumePanelStore;

    invoke-virtual {v2}, Lcom/android/systemui/volume/store/StoreInteractor;->observeStore()V

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/volume/VolumePanelState;->isCoverClosed()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;-><init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->initButtons()V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
