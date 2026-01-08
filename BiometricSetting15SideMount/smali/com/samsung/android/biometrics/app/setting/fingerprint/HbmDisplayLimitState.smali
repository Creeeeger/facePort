.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmListener;
.implements Lcom/samsung/android/biometrics/app/setting/DisplayStateManager$LimitDisplayStateCallback;


# static fields
.field public static final sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/Singleton;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayLimitState$1;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "DisplayLimitState"

    .line 2
    .line 3
    return-object p0
.end method

.method public final handleDisplayStateChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 7
    .line 8
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 9
    .line 10
    invoke-interface {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnHBM()V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState$1;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOnState;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x1

    .line 30
    if-ne p1, v0, :cond_1

    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 37
    .line 38
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOffHBM()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method public final onHbmChanged(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const-string p0, "BSS_HbmDisplayLimitState"

    .line 4
    .line 5
    const-string p1, "onHbmChanged: enabled"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v0, v1, p1}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->setDisplayStateLimit(JZ)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method public final onLimitDisplayStateChanged(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 8
    .line 9
    const-string v0, "BSS_HbmDisplayLimitState"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOffDoze(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState$1;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmDisplayOffState;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->setCurrentState(Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 6
    .line 7
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentStateLogical:I

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->setDisplayStateLimit(JZ)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final turnOffHbm()V
    .locals 2

    .line 1
    const-string v0, "BSS_HbmDisplayLimitState"

    .line 2
    .line 3
    const-string v1, "turnOffHbm"

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
    const-string v0, "BSS_HbmDisplayLimitState"

    .line 2
    .line 3
    const-string v1, "turnOnHbm"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->turnOnDoze(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;->mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;

    .line 18
    .line 19
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController;->mHbmProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;

    .line 22
    .line 23
    invoke-interface {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmProvider;->turnOnHBM()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
