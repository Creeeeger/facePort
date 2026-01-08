.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public mIconOptionWhenScreenOff:I

.field public mIconOptionWhenScreenOn:I

.field public mViEffectType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final isEnabledOnAod()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final isEnabledScreenOn()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
.end method

.method public final start()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->updateValue()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor$1;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;Landroid/os/Handler;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "fingerprint_screen_off_icon_aod"

    .line 29
    .line 30
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, -0x2

    .line 38
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "fingerprint_screen_on_icon_lock"

    .line 48
    .line 49
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 54
    .line 55
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "fingerprint_effect"

    .line 65
    .line 66
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final updateValue()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fingerprint_screen_off_icon_aod"

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v4, "fingerprint_screen_on_icon_lock"

    .line 24
    .line 25
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 30
    .line 31
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v4, "fingerprint_effect"

    .line 38
    .line 39
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mViEffectType:I

    .line 44
    .line 45
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 46
    .line 47
    const-string v3, "BSS_UdfpsIconOptionMonitor"

    .line 48
    .line 49
    const/4 v4, 0x2

    .line 50
    const-string v5, ", "

    .line 51
    .line 52
    if-ne v0, v2, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    const-string v6, "fingerprint_adaptive_icon"

    .line 57
    .line 58
    const/4 v7, 0x1

    .line 59
    invoke-static {v0, v6, v7, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 64
    .line 65
    const-string v8, "fingerprint_screen_off_icon"

    .line 66
    .line 67
    invoke-static {v6, v8, v7, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    if-nez v6, :cond_0

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    if-eq v0, v7, :cond_2

    .line 77
    .line 78
    if-ne v6, v7, :cond_1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-boolean v8, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FACE_HAL:Z

    .line 82
    .line 83
    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    :goto_0
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    :goto_1
    const/4 v8, 0x0

    .line 90
    iput v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 91
    .line 92
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v9, "updateValue: No DB, "

    .line 95
    .line 96
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 112
    .line 113
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mContext:Landroid/content/Context;

    .line 124
    .line 125
    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 126
    .line 127
    invoke-static {v0, v1, v7, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 128
    .line 129
    .line 130
    :cond_4
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 131
    .line 132
    if-ne v0, v2, :cond_5

    .line 133
    .line 134
    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 135
    .line 136
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    const-string v1, "updateValue: "

    .line 139
    .line 140
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOff:I

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mIconOptionWhenScreenOn:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsIconOptionMonitor;->mViEffectType:I

    .line 160
    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    return-void
.end method
