.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;

.field public final synthetic f$1:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "FpstFaceTurnOnDialog"

    const-string v0, "mNeedRegistration : false"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$FaceTurnOnDialog;->mContext:Landroidx/fragment/app/FragmentActivity;

    const/4 p2, 0x0

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method
