.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    .line 25
    .line 26
    sub-long/2addr v0, v2

    .line 27
    const-wide/16 v2, 0x7d0

    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-gez v0, :cond_3

    .line 32
    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    .line 34
    .line 35
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mWidth:I

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mHeight:I

    .line 41
    .line 42
    if-nez v1, :cond_0

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mTouchMapReader:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/TouchMapReader;->readTouchMatrix()[[I

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->getOuterLine([[I)Ljava/util/ArrayList;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->calculateClipOutPath(Ljava/util/ArrayList;)Landroid/graphics/Path;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->mEffectPath:Landroid/graphics/Path;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto :goto_4

    .line 66
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v0

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    :goto_2
    monitor-exit v0

    .line 69
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 70
    .line 71
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 72
    .line 73
    const/4 v2, 0x3

    .line 74
    invoke-direct {v1, p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    const-wide/16 v0, 0x1e

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :goto_4
    monitor-exit v0

    .line 87
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 88
    :catch_0
    :cond_3
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_1
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->ASSET_NAME_ULTRASONIC:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :pswitch_2
    sget-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->ASSET_NAME_ULTRASONIC:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    const-string v0, "BSS_VisualEffectContainer"

    .line 104
    .line 105
    const-string v1, "start()"

    .line 106
    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectViews:Ljava/util/List;

    .line 111
    .line 112
    check-cast v0, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    :cond_4
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Landroid/util/Pair;

    .line 130
    .line 131
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 132
    .line 133
    instance-of v4, v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 134
    .line 135
    if-eqz v4, :cond_5

    .line 136
    .line 137
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 138
    .line 139
    sget-object v3, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    .line 140
    .line 141
    invoke-virtual {v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 156
    .line 157
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :cond_5
    instance-of v2, v3, Landroid/widget/ImageView;

    .line 164
    .line 165
    if-eqz v2, :cond_4

    .line 166
    .line 167
    check-cast v3, Landroid/view/View;

    .line 168
    .line 169
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v1, Landroid/view/animation/Animation;

    .line 172
    .line 173
    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    .line 175
    .line 176
    goto :goto_5

    .line 177
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 178
    .line 179
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 185
    .line 186
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 194
    .line 195
    iget-wide v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    .line 196
    .line 197
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    .line 199
    .line 200
    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    .line 202
    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v0

    .line 207
    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    .line 208
    .line 209
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    .line 210
    .line 211
    if-eqz v0, :cond_7

    .line 212
    .line 213
    goto :goto_6

    .line 214
    :cond_7
    new-instance v0, Ljava/lang/Thread;

    .line 215
    .line 216
    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    .line 217
    .line 218
    const/4 v3, 0x2

    .line 219
    invoke-direct {v1, p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;I)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 228
    .line 229
    .line 230
    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateLayout()V

    .line 231
    .line 232
    .line 233
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
