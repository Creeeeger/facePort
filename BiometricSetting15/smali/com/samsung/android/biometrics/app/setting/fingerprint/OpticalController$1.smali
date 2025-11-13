.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final acquireWakeLock(J)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    const-class v1, Landroid/os/PowerManager;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/PowerManager;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const-string v2, "BSS_OpticalController:P"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final isPowerSaveMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    const-class v0, Landroid/os/PowerManager;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/os/PowerManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final releaseWakeLock()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
