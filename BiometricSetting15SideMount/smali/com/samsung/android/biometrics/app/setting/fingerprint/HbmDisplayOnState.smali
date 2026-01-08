.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;


# static fields
.field public static final sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DisplayOnState"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDisplayStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->turnOffHbm()V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final onHbmChanged(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final turnOffHbm()V
    .locals 2

    .line 1
    const-string v0, "BSS_HbmDisplayOnState"

    .line 2
    .line 3
    const-string v1, "handleHbmOff"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffHBM()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final turnOnHbm()V
    .locals 2

    .line 1
    const-string v0, "BSS_HbmDisplayOnState"

    .line 2
    .line 3
    const-string v1, "handleHbmOn"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 13
    .line 14
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnHBM()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
