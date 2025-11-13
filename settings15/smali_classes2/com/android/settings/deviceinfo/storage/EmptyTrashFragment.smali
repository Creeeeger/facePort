.class public Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mOnEmptyTrashCompleteListener:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

.field public final mParentFragment:Landroidx/fragment/app/Fragment;

.field public final mTrashSize:J

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;IJLcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    iput p2, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mUserId:I

    iput-wide p3, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mTrashSize:J

    iput-object p5, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mOnEmptyTrashCompleteListener:Lcom/android/settings/deviceinfo/storage/StorageItemPreferenceController;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x753

    return p0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f142d98

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;->mTrashSize:J

    invoke-static {v1, v2, v3}, Lcom/android/settings/deviceinfo/storage/StorageUtils;->getStorageSizeLabel(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142d95

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/deviceinfo/storage/EmptyTrashFragment;)V

    const p0, 0x7f142d96

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    const/high16 p0, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method
