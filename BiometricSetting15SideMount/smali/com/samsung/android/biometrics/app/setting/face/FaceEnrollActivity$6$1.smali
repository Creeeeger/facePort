.class public final Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$1;
.super Landroid/os/CountDownTimer;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$1;->this$1:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 2
    .line 3
    const-wide/16 v0, 0x7d0

    .line 4
    .line 5
    const-wide/16 v2, 0x64

    .line 6
    .line 7
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6$1;->this$1:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$6;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->mIsHelpEnabled:Z

    .line 7
    .line 8
    return-void
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
.end method
