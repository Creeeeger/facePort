.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field static final KEY_AOD_SHOW_STATUS:Ljava/lang/String; = "aod_show_state"


# instance fields
.field public mAodEndTime:I

.field public mAodShowState:I

.field public final mAodShowStatusUri:Landroid/net/Uri;

.field public mAodStartTime:I

.field mCallbacks:Ljava/util/Set;

.field mContentObserver:Landroid/database/ContentObserver;

.field public final mContext:Landroid/content/Context;

.field public mIsDisabledInPsm:Z

.field public mIsEnabledAod:Z

.field public mIsEnabledAodTapToShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mCallbacks:Ljava/util/Set;

    .line 12
    .line 13
    const-string p1, "aod_show_state"

    .line 14
    .line 15
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowStatusUri:Landroid/net/Uri;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final isInAodScheduleTime()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodStartTime:I

    .line 11
    .line 12
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodEndTime:I

    .line 13
    .line 14
    if-eq v0, p0, :cond_1

    .line 15
    .line 16
    if-le v0, p0, :cond_0

    .line 17
    .line 18
    add-int/lit16 p0, p0, 0x5a0

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 29
    .line 30
    .line 31
    const/16 v3, 0xb

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    mul-int/lit8 v3, v3, 0x3c

    .line 38
    .line 39
    const/16 v4, 0xc

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v3

    .line 46
    if-gt v0, v2, :cond_1

    .line 47
    .line 48
    if-gt v2, p0, :cond_1

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    return p0

    .line 52
    :cond_1
    return v1
.end method

.method public final isShowing()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowState:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final removeCallback(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$Callback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mCallbacks:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final start()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;Landroid/os/Handler;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowStatusUri:Landroid/net/Uri;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, -0x2

    .line 31
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "psm_always_on_display_mode"

    .line 41
    .line 42
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 47
    .line 48
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-string v1, "aod_mode"

    .line 58
    .line 59
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->updateValue()V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContentObserver:Landroid/database/ContentObserver;

    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public final updateValue()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "aod_show_state"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, -0x2

    .line 11
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowState:I

    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "aod_mode"

    .line 24
    .line 25
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    move v0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v0, v2

    .line 35
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const-string v4, "aod_tap_to_show_mode"

    .line 44
    .line 45
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-ne v0, v1, :cond_1

    .line 50
    .line 51
    move v0, v1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v0, v2

    .line 54
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v4, "aod_mode_start_time"

    .line 63
    .line 64
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodStartTime:I

    .line 69
    .line 70
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v4, "aod_mode_end_time"

    .line 77
    .line 78
    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodEndTime:I

    .line 83
    .line 84
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v4, "psm_always_on_display_mode"

    .line 91
    .line 92
    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const-string v3, ","

    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    array-length v3, v0

    .line 105
    if-eqz v3, :cond_2

    .line 106
    .line 107
    const-string v3, "1"

    .line 108
    .line 109
    aget-object v0, v0, v2

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    :cond_2
    move v2, v1

    .line 118
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsDisabledInPsm:Z

    .line 119
    .line 120
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v1, "updateValue: "

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAod:Z

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", "

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodShowState:I

    .line 138
    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsEnabledAodTapToShow:Z

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodStartTime:I

    .line 154
    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mAodEndTime:I

    .line 162
    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/AodStatusMonitor;->mIsDisabledInPsm:Z

    .line 170
    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    const-string v0, "BSS_AodStatusMonitor"

    .line 179
    .line 180
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    .line 182
    .line 183
    return-void
.end method
