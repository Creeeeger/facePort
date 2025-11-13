.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChooseLockGeneric.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryResetprotectionWarningDialogActivity"
.end annotation


# static fields
.field private static final DIALOG_EXTEND:Landroid/view/animation/Interpolator;

.field private static sUserId:I = -0x1


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFaceRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasFace:Z

.field private mHasFingerprints:Z

.field private mMessageRes:I

.field private mRemoveButton:Landroid/widget/Button;

.field private mRootView:Landroid/view/ViewGroup;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleRes:I

.field private mToolBar:Landroid/widget/Toolbar;

.field private mUnlockMethodToSet:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$q_nV8il9PAUW6PFaG3iFRXIUFCA(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->lambda$setDeleteAllBiometric$1(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteAllFingerPrintForUser(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->deleteAllFingerPrintForUser(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 2837
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const v2, 0x3ccccccd    # 0.025f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->DIALOG_EXTEND:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 2808
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2821
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 2822
    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x0

    .line 2824
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    .line 2825
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    .line 3034
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$3;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    return-void
.end method

.method private deleteAllFingerPrintForUser(I)V
    .locals 3

    .line 2999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllFingerPrintForUser : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChooseLockGenericFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3001
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    .line 3004
    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3006
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 3014
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 3015
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    .line 3016
    invoke-direct {p0, p0, v2, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->removeFingerPrint(Landroid/app/Activity;Landroid/hardware/fingerprint/Fingerprint;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3007
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllFingerPrintForUser items : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    .line 3009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAllFingerPrintForUser items.isEmpty() : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 p1, 0x2719

    .line 3011
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mUnlockMethodToSet:Ljava/lang/String;

    const-string/jumbo v2, "unlockMethodToSet"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3012
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    return-void
.end method

.method private getRemoveBiometricsPopupDescription()Ljava/lang/String;
    .locals 6

    .line 3050
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    if-nez v1, :cond_0

    .line 3051
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_remove_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3052
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 3053
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_remove_face:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3055
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_remove_biometric:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3058
    :goto_0
    sget v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/16 v2, 0x114c

    const/16 v3, 0x1b

    if-eqz v1, :cond_3

    .line 3059
    sget v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {p0, v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->getKnoxName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 3060
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 3061
    sget v1, Lcom/android/settings/R$string;->sec_workspace_locktype_change_nonsecure_biometric_remove_workspace_finger:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3063
    :cond_2
    sget v1, Lcom/android/settings/R$string;->sec_workspace_locktype_change_nonsecure_biometric_remove_workspace_bio:I

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    move-object v0, p0

    const-string p0, "a"

    .line 3065
    invoke-static {v3, v2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p0, "b"

    .line 3067
    invoke-static {v3, v2, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :goto_2
    return-object v0
.end method

.method private synthetic lambda$setDeleteAllBiometric$1(Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 2928
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p2, :cond_1

    .line 2929
    sget p2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2930
    sget p1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->deleteAllFingerPrintForUser(I)V

    goto :goto_0

    .line 2932
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    new-instance v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;Landroid/app/Activity;)V

    invoke-virtual {p2, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 2949
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    if-eqz p1, :cond_2

    .line 2950
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->removeFace()V

    .line 2954
    :cond_2
    invoke-direct {p0, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->removeManagedProfileFingerprints(Landroid/app/Activity;)V

    const/16 p1, 0x2719

    .line 2955
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mUnlockMethodToSet:Ljava/lang/String;

    const-string/jumbo v1, "unlockMethodToSet"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2956
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private removeFace()V
    .locals 3

    .line 3023
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    sget v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ChooseLockGenericFragment"

    const-string/jumbo v2, "swipe/none remove registered face"

    .line 3024
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3025
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "Remove all face data"

    .line 3026
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    sget v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceRemovalCallback:Landroid/hardware/face/FaceManager$RemovalCallback;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/face/FaceManager;->removeAll(ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "removeFace : no enrolled face"

    .line 3029
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private removeFingerPrint(Landroid/app/Activity;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    .line 2961
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$2;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;ILandroid/app/Activity;)V

    invoke-virtual {v0, p2, p3, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private removeManagedProfileFingerprints(Landroid/app/Activity;)V
    .locals 6

    .line 2980
    sget v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    .line 2981
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeManagedProfileFingerprints : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ChooseLockGenericFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 2983
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2985
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 2986
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2988
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 2989
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2990
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2991
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->deleteAllFingerPrintForUser(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setActionBar()V
    .locals 2

    .line 2886
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRootView:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->action_bar:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mToolBar:Landroid/widget/Toolbar;

    .line 2887
    sget v1, Lcom/android/settings/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mTitle:Landroid/widget/TextView;

    .line 2888
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mToolBar:Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setActionBar(Landroid/widget/Toolbar;)V

    return-void
.end method

.method private setDeleteAllBiometric()V
    .locals 2

    .line 2915
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mToolBar:Landroid/widget/Toolbar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 2918
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    if-nez v1, :cond_0

    .line 2919
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_dialog_fingerprint:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2920
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 2921
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_dialog_face:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2923
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_biometric_dialog_biometric:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2925
    :goto_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2926
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRemoveButton:Landroid/widget/Button;

    sget v1, Lcom/android/settings/R$string;->common_remove:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2927
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRemoveButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public initView()V
    .locals 3

    .line 2892
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->getRemoveBiometricsPopupDescription()Ljava/lang/String;

    move-result-object v0

    .line 2893
    sget v1, Lcom/android/settings/R$id;->dialog_description:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mDescriptionTextView:Landroid/widget/TextView;

    .line 2894
    sget v1, Lcom/android/settings/R$id;->cancelButton:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mCancelButton:Landroid/widget/Button;

    .line 2895
    sget v1, Lcom/android/settings/R$id;->removeButton:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRemoveButton:Landroid/widget/Button;

    .line 2898
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mTitle:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2899
    sget v2, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_title_workspace:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/android/settings/R$string;->sec_screen_locktype_change_nonsecure_title:I

    .line 2898
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 2900
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2901
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2902
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 3074
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/android/settings/R$id;->removeButton:I

    if-ne p1, v0, :cond_0

    .line 3075
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->setDeleteAllBiometric()V

    goto :goto_0

    .line 3077
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 2842
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "ChooseLockGenericFragment"

    const-string p1, "Intent is null"

    .line 2844
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2847
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "titleRes"

    const/4 v1, 0x0

    .line 2848
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mTitleRes:I

    const-string/jumbo p1, "messageRes"

    .line 2849
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mMessageRes:I

    const-string/jumbo p1, "unlockMethodToSet"

    .line 2850
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mUnlockMethodToSet:Ljava/lang/String;

    const-string/jumbo p1, "userId"

    .line 2852
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    .line 2854
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 2855
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 2856
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    sget v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-virtual {p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    sget p1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFingerprints(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFingerprints:Z

    .line 2857
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_4

    sget v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-virtual {p1, v2}, Landroid/hardware/face/FaceManager;->hasEnrolledTemplates(I)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_4
    sget p1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->sUserId:I

    invoke-static {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->hasManagedProfileFace(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :cond_6
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mHasFace:Z

    .line 2859
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->sec_lock_remove_all_biometics_dialog:I

    const/4 v2, 0x0

    .line 2860
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRootView:Landroid/view/ViewGroup;

    .line 2861
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 2862
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x50

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 2863
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 2864
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->setActionBar()V

    .line 2865
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetprotectionWarningDialogActivity;->initView()V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2875
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 2876
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2877
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string/jumbo v2, "screen_lock_force_destroy"

    .line 2878
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 2879
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 2881
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 2870
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method
