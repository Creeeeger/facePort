.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda1;->f$1:Landroid/content/Intent;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    .line 13
    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_0

    .line 19
    .line 20
    const-string v2, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_7

    .line 27
    .line 28
    :cond_0
    const-string v2, "info"

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const-string v3, "location"

    .line 36
    .line 37
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", "

    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsClientRunning:Z

    .line 61
    .line 62
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "BSS_UdfpsFodHandler"

    .line 70
    .line 71
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    const/4 v1, 0x1

    .line 75
    if-eqz p0, :cond_1

    .line 76
    .line 77
    array-length v4, p0

    .line 78
    const/4 v5, 0x2

    .line 79
    if-ne v4, v5, :cond_1

    .line 80
    .line 81
    const/4 v4, 0x0

    .line 82
    aget v4, p0, v4

    .line 83
    .line 84
    aget p0, p0, v1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 v4, 0x0

    .line 88
    move p0, v4

    .line 89
    :goto_0
    const/16 v5, 0x8

    .line 90
    .line 91
    iget-object v6, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mMainHandler:Landroid/os/Handler;

    .line 92
    .line 93
    if-eq v2, v5, :cond_4

    .line 94
    .line 95
    packed-switch v2, :pswitch_data_0

    .line 96
    .line 97
    .line 98
    goto/16 :goto_2

    .line 99
    .line 100
    :pswitch_0
    invoke-virtual {v0, v4, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->handleTouchUp(FF)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_2

    .line 104
    .line 105
    :pswitch_1
    iget-boolean v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsClientRunning:Z

    .line 106
    .line 107
    if-nez v2, :cond_2

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnableTimeoutTouchUp:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 111
    .line 112
    invoke-virtual {v6, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    .line 114
    .line 115
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mIsTouchDown:Z

    .line 116
    .line 117
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mFodConsumers:Ljava/util/List;

    .line 118
    .line 119
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;

    .line 136
    .line 137
    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$1;->this$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->handleOnFodTouchDown()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    const-string v2, "printTouchInfoOnBgThread() called with: x = ["

    .line 146
    .line 147
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string v2, "], y = ["

    .line 154
    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v2, "]"

    .line 162
    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .line 172
    .line 173
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;

    .line 174
    .line 175
    invoke-direct {v1, v0, v4, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;FF)V

    .line 176
    .line 177
    .line 178
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnablePrintTouchInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;

    .line 179
    .line 180
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    sget-object p0, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->sHandler:Landroid/os/Handler;

    .line 188
    .line 189
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mRunnablePrintTouchInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_4
    sget-boolean p0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    .line 196
    .line 197
    if-nez p0, :cond_5

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_5
    new-instance p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;

    .line 201
    .line 202
    const/4 v1, 0x1

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;I)V

    .line 204
    .line 205
    .line 206
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mShouldUseDelayOfSingleTap:Ljava/util/function/BooleanSupplier;

    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-eqz v0, :cond_6

    .line 213
    .line 214
    const-wide/16 v0, 0x12c

    .line 215
    .line 216
    invoke-virtual {v6, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda0;->run()V

    .line 221
    .line 222
    .line 223
    :cond_7
    :goto_2
    return-void

    .line 224
    nop

    .line 225
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
