.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 2
    .line 3
    sget p2, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p2, "Received a result of generateChallenge"

    .line 9
    .line 10
    const-string v0, "BSS_FaceEnrollActivity"

    .line 11
    .line 12
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsChallengeCreated:Z

    .line 17
    .line 18
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mSensorId:I

    .line 19
    .line 20
    iput-wide p3, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mChallenge:J

    .line 21
    .line 22
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mGkPwHandle:J

    .line 28
    .line 29
    iget-wide v4, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mChallenge:J

    .line 30
    .line 31
    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mUserId:I

    .line 32
    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    const-string p1, "GatekeeperPasswordProvider"

    .line 44
    .line 45
    const-string p2, "Unable to request Gatekeeper HAT"

    .line 46
    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p2, "Token = "

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 66
    .line 67
    if-nez p2, :cond_1

    .line 68
    .line 69
    const-string p2, "NULL"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mHWToken:[B

    .line 87
    .line 88
    if-nez p1, :cond_2

    .line 89
    .line 90
    const p1, 0x7f1000ca

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const/16 p2, 0x3ed

    .line 98
    .line 99
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->showFaceErrorDialog(ILjava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method
