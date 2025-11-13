.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    return-void
.end method


# virtual methods
.method public final onFoldUpdated(Z)V
    .locals 2

    sget v0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mDevicePostureState:I

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedPostureGuidance:Z

    sget v1, Lcom/android/settings/biometrics/BiometricUtils;->sAllowEnrollPosture:I

    if-eqz v1, :cond_2

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mNextLaunched:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->launchPostureGuidance()V

    :cond_2
    :goto_1
    return-void
.end method
