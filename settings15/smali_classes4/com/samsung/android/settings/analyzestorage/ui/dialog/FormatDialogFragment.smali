.class public final Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;
.super Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;",
        "Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;",
        "<init>",
        "()V",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;->mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;

    return-void
.end method


# virtual methods
.method public final createDialog$2()Landroidx/appcompat/app/AlertDialog;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;->mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->addDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    const v0, 0x7f14043a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f140402

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v2, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    const v2, 0x7f140401

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$createDialog$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$createDialog$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;I)V

    const v2, 0x7f1403fd

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$createDialog$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$createDialog$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;I)V

    const p0, 0x7f1403eb

    invoke-virtual {v1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroyView()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->sInstanceMap:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment;->mStorageEjectListener:Lcom/samsung/android/settings/analyzestorage/ui/dialog/FormatDialogFragment$mStorageEjectListener$1;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastReceiveCenter;->removeDynamicListener(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;)V

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->onDestroyView()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->baseDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    return-void
.end method
