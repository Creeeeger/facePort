.class public final Lcom/android/systemui/doze/DozeWallpaperState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Part;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field public mIsAmbientMode:Z

.field public final mWallpaperManagerService:Landroid/app/IWallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeWallpaperState"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/IWallpaperManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p3, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "DozeWallpaperState:"

    const-string v1, " isAmbientMode: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    const-string v2, " hasWallpaperService: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    return-void
.end method

.method public final transitionTo(Lcom/android/systemui/doze/DozeMachine$State;Lcom/android/systemui/doze/DozeMachine$State;)V
    .locals 7

    const-string v0, "DozeWallpaperState"

    const-string v1, "AOD wallpaper state changed to: "

    sget-object v2, Lcom/android/systemui/doze/DozeWallpaperState$1;->$SwitchMap$com$android$systemui$doze$DozeMachine$State:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    move v2, v3

    goto :goto_0

    :pswitch_0
    move v2, v4

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-eqz v2, :cond_0

    iget-boolean p1, v5, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    goto :goto_2

    :cond_0
    sget-object v6, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_PULSING:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p1, v6, :cond_1

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    if-ne p2, p1, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p2

    xor-int/2addr p2, v4

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->isWakeAndUnlock()Z

    move-result v5

    if-nez v5, :cond_2

    iget-boolean p2, p2, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mFadedAwayAfterWakeAndUnlock:Z

    if-eqz p2, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    :cond_3
    move v3, v4

    :cond_4
    move p1, v3

    :goto_2
    iget-boolean p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    if-eq v2, p2, :cond_7

    iput-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    iget-object p2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    if-eqz p2, :cond_7

    if-eqz p1, :cond_5

    const-wide/16 p1, 0x1f4

    goto :goto_3

    :cond_5
    const-wide/16 p1, 0x0

    :goto_3
    :try_start_0
    sget-boolean v2, Lcom/android/systemui/doze/DozeWallpaperState;->DEBUG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", animationDuration: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mWallpaperManagerService:Landroid/app/IWallpaperManager;

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-interface {v1, v2, p1, p2}, Landroid/app/IWallpaperManager;->setInAmbientMode(ZJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Cannot notify state to WallpaperManagerService: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/doze/DozeWallpaperState;->mIsAmbientMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
