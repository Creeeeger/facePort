.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mLastTspVisibilityCommand:Z

    .line 6
    .line 7
    if-ne v1, p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mLastTspVisibilityCommand:Z

    .line 11
    .line 12
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const-class v2, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManager;->setFodIconVisible(I)I

    .line 25
    .line 26
    .line 27
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "sendUdfpsIconVisibilityToTsp: "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "BSS_UdfpsIconVisibilityNotifier"

    .line 46
    .line 47
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_TASKBAR:Z

    .line 51
    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-string v2, "task_bar"

    .line 57
    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static {v1, v2, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x1

    .line 64
    if-ne v1, v2, :cond_2

    .line 65
    .line 66
    new-instance v1, Landroid/content/Intent;

    .line 67
    .line 68
    const-string v2, "com.samsung.android.intent.action.UPDATE_UDFPS_ICON_VISIBILITY"

    .line 69
    .line 70
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v2, "VISIBLE"

    .line 74
    .line 75
    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconVisibilityNotifier;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 81
    .line 82
    const-string v2, "android.permission.MANAGE_FINGERPRINT"

    .line 83
    .line 84
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method
