.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;
.super Landroid/os/FileObserver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p2, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->getBrightnessFromFile()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    const/high16 p2, -0x40800000    # -1.0f

    .line 9
    .line 10
    cmpl-float p2, p1, p2

    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$2;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 15
    .line 16
    iget-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->mH:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
