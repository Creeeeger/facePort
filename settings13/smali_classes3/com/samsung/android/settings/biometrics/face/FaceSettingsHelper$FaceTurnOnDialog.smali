.class public Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FaceSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceTurnOnDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

.field private mNeedRegistration:Z

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$CX4Ls8Cru8gzwCtrBa26WfI_9HE(Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ul6z9pT9g8bYlF89W-XG17AaWYw(Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->lambda$onCreateDialog$0(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Lcom/android/internal/widget/LockPatternUtils;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 171
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mNeedRegistration : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "FpstFaceTurnOnDialog"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mNeedRegistration:Z

    if-nez p2, :cond_0

    .line 173
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mUserId:I

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    if-eqz p0, :cond_1

    .line 177
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOnFaceLock()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOffFaceLock()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "FpstFaceTurnOnDialog"

    const-string v0, "onCancel!!"

    .line 196
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mListener:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    if-eqz p0, :cond_0

    .line 198
    invoke-interface {p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOffFaceLock()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 157
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    const-string p1, "FpstFaceTurnOnDialog"

    const-string v0, "onCreateDialog"

    .line 163
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 166
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V

    const/4 p1, -0x1

    .line 168
    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 181
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;)V

    const/4 p0, -0x2

    .line 180
    invoke-virtual {v0, p0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "FpstFaceTurnOnDialog"

    const-string v1, "onDestroyView"

    .line 203
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    return-void
.end method
