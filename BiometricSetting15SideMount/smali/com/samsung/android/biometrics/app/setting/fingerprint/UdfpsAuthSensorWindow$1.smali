.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "BSS_UdfpsAuthSensorWindow"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-string p1, "reason"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v0, "ACTION: CLOSE_SYSTEM_DIALOG : reason = "

    .line 24
    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    const-string p2, "recentapps"

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

    .line 49
    .line 50
    if-eqz p0, :cond_2

    .line 51
    .line 52
    const/4 p1, 0x4

    .line 53
    invoke-interface {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;->onUserCancel(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/4 v2, 0x1

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    const-class p2, Landroid/app/SemStatusBarManager;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Landroid/app/SemStatusBarManager;

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    const-string p1, "Cancel auth because of PanelExpanded"

    .line 87
    .line 88
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

    .line 94
    .line 95
    if-eqz p0, :cond_2

    .line 96
    .line 97
    invoke-interface {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;->onUserCancel(I)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v0, "com.sec.android.intent.action.AIR_BUTTON"

    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_2

    .line 108
    .line 109
    sget-boolean p1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    .line 110
    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    const-string p1, "isShow"

    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_2

    .line 121
    .line 122
    const-string p1, "Cancel auth because of AirCommand"

    .line 123
    .line 124
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsAuthSensorWindow;

    .line 128
    .line 129
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;->mCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;

    .line 130
    .line 131
    if-eqz p0, :cond_2

    .line 132
    .line 133
    invoke-interface {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsWindowCallback;->onUserCancel(I)V

    .line 134
    .line 135
    .line 136
    :cond_2
    :goto_0
    return-void
.end method
