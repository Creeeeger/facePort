.class public final Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public instance:I


# virtual methods
.method public final getConfirmAppInfoDialog(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_2

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->appList:Ljava/util/List;

    iput-object p2, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;->confirmApp:Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    :cond_2
    return-object v0
.end method

.method public final getDialog(IILcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->instance:I

    const/16 p2, 0x154

    if-eq p1, p2, :cond_3

    const/16 p2, 0x15e

    if-eq p1, p2, :cond_2

    const/16 p2, 0x190

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2ee

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmArchive;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getConfirmAppInfoDialog(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iput-object p0, p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    move-object p0, p1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmClearAppCache;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getConfirmAppInfoDialog(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    move-result-object p0

    goto :goto_0

    :cond_3
    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmUninstall;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3, p1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getConfirmAppInfoDialog(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoInterface;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/ConfirmAppInfoDialogFragment;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->instance:I

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getProgressDialog(I)Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;
    .locals 1

    const/16 v0, 0x2ee

    if-ne p1, v0, :cond_0

    const p1, 0x7f1403e9

    goto :goto_0

    :cond_0
    const p1, 0x7f1403f3

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;-><init>()V

    iput p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/SpinnerProgressDialogFragment;->textResId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method
