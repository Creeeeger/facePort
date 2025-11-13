.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

.field public final synthetic f$1:J

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    iput-boolean p4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$2:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient$$ExternalSyntheticLambda0;->f$2:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsKeyguardClient;->showSensorIconDueToFodTouchWhenScreenIsOff(JZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
