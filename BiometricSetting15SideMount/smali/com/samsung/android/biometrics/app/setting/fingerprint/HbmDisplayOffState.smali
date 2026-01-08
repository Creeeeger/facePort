.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;


# static fields
.field public static final sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DisplayOffState"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDisplayStateChanged(I)V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 11
    .line 12
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 13
    .line 14
    invoke-interface {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnHBM()V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final onLimitDisplayStateChanged(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState$1;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;->turnOnHbm()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final turnOffHbm()V
    .locals 0

    .line 1
    return-void
.end method

.method public final turnOnHbm()V
    .locals 3

    .line 1
    const-string v0, "BSS_HbmDisplayOffState"

    .line 2
    .line 3
    const-string v1, "turnOnHbm"

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
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->setDisplayStateLimit(JZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
