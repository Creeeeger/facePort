.class public final Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDialogType:I

.field public final mLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

.field public final mResultReceiver:Landroid/os/ResultReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/localepicker/LocaleDialogFragment;)V
    .locals 1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "arg_dialog_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mDialogType:I

    const-string v0, "arg_target_locale"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v0, "arg_result_receiver"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ResultReceiver;

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mResultReceiver:Landroid/os/ResultReceiver;

    return-void
.end method


# virtual methods
.method public getDialogContent()Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;
    .locals 5

    new-instance v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mLocaleInfo:Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getSecFullNameNative()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mDialogType:I

    const v3, 0x7f1408bf

    if-eqz v2, :cond_2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v4, 0x7f142f36

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v2, 0x7f140c35

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v2, 0x7f14029c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v3, 0x7f142f37

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v2, 0x7f140c36

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v1, 0x7f141b4c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v4, 0x7f142f2d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mTitle:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v2, 0x7f140c32

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    const v2, 0x7f140882

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mPositiveButton:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController$DialogContent;->mNegativeButton:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mResultReceiver:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mDialogType:I

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "arg_dialog_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v0, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/localepicker/LocaleDialogFragment$LocaleDialogController;->mResultReceiver:Landroid/os/ResultReceiver;

    invoke-virtual {p0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
