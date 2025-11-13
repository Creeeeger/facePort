.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemVibrator$AllVibratorsStateListener;,
        Landroid/os/SystemVibrator$MultiVibratorInfo;,
        Landroid/os/SystemVibrator$NoVibratorInfo;,
        Landroid/os/SystemVibrator$SingleVibratorStateListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final blacklist mBrokenListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/SystemVibrator$AllVibratorsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mRegisteredListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/Vibrator$OnVibratorStateChangedListener;",
            "Landroid/os/SystemVibrator$AllVibratorsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mVibratorInfo:Landroid/os/VibratorInfo;

.field private final blacklist mVibratorManager:Landroid/os/VibratorManager;


# direct methods
.method public constructor greylist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    .line 69
    const-class v0, Landroid/os/VibratorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    iput-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    .line 70
    return-void
.end method

.method private blacklist tryUnregisterBrokenListeners()V
    .locals 4

    .line 250
    iget-object v0, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 253
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    iget-object v3, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v2, v3}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 254
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    :cond_0
    goto :goto_1

    .line 259
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "Vibrator"

    const-string v3, "Failed to unregister broken listener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_1
    monitor-exit v0

    .line 260
    return-void

    .line 259
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 134
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v0, p0, Landroid/os/SystemVibrator;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 136
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator context."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/os/SystemVibrator;->addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    .line 140
    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 146
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "Vibrator"

    const-string v1, "Failed to add vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 154
    .local v0, "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 156
    :try_start_1
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 157
    const-string v2, "Vibrator"

    const-string v3, "Listener already registered."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 166
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 170
    :try_start_2
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 173
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 158
    return-void

    .line 160
    :cond_2
    :try_start_3
    new-instance v2, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    invoke-direct {v2, p1, p2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;-><init>(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V

    move-object v0, v2

    .line 161
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v0, v2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->register(Landroid/os/VibratorManager;)V

    .line 162
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/4 v0, 0x0

    .line 164
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 166
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 169
    iget-object v1, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 170
    :try_start_4
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 173
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 174
    nop

    .line 175
    return-void

    .line 164
    :catchall_2
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .end local p0    # "this":Landroid/os/SystemVibrator;
    .end local p1    # "executor":Ljava/util/concurrent/Executor;
    .end local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 166
    .restart local v0    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    .restart local p0    # "this":Landroid/os/SystemVibrator;
    .restart local p1    # "executor":Ljava/util/concurrent/Executor;
    .restart local p2    # "listener":Landroid/os/Vibrator$OnVibratorStateChangedListener;
    :catchall_3
    move-exception v1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->hasRegisteredListeners()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    iget-object v2, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 170
    :try_start_7
    iget-object v3, p0, Landroid/os/SystemVibrator;->mBrokenListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    monitor-exit v2

    goto :goto_2

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1

    .line 173
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 174
    throw v1
.end method

.method public whitelist cancel()V
    .locals 2

    .line 223
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 224
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->cancel()V

    .line 228
    return-void
.end method

.method public blacklist cancel(I)V
    .locals 2
    .param p1, "usageFilter"    # I

    .line 232
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 233
    const-string v0, "Vibrator"

    const-string v1, "Failed to cancel vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->cancel(I)V

    .line 237
    return-void
.end method

.method protected blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 8

    .line 74
    iget-object v0, p0, Landroid/os/SystemVibrator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    if-eqz v1, :cond_0

    .line 76
    monitor-exit v0

    return-object v1

    .line 78
    :cond_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v1, :cond_1

    .line 79
    const-string v1, "Vibrator"

    const-string v2, "Failed to retrieve vibrator info; no vibrator manager."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v1

    .line 82
    :cond_1
    invoke-virtual {v1}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v1

    .line 83
    .local v1, "vibratorIds":[I
    array-length v2, v1

    if-nez v2, :cond_2

    .line 86
    new-instance v2, Landroid/os/SystemVibrator$NoVibratorInfo;

    invoke-direct {v2}, Landroid/os/SystemVibrator$NoVibratorInfo;-><init>()V

    iput-object v2, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v2

    .line 88
    :cond_2
    array-length v2, v1

    new-array v2, v2, [Landroid/os/VibratorInfo;

    .line 89
    .local v2, "vibratorInfos":[Landroid/os/VibratorInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 90
    iget-object v4, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    aget v5, v1, v3

    invoke-virtual {v4, v5}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v4

    .line 91
    .local v4, "vibrator":Landroid/os/Vibrator;
    instance-of v5, v4, Landroid/os/NullVibrator;

    if-eqz v5, :cond_3

    .line 92
    const-string v5, "Vibrator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Vibrator manager service not ready; Info not yet available for vibrator: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v5, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v5

    .line 98
    :cond_3
    invoke-virtual {v4}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v5

    aput-object v5, v2, v3

    .line 89
    .end local v4    # "vibrator":Landroid/os/Vibrator;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    .end local v3    # "i":I
    :cond_4
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 102
    new-instance v3, Landroid/os/VibratorInfo;

    const/4 v4, -0x1

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/os/VibratorInfo;-><init>(ILandroid/os/VibratorInfo;)V

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    .line 105
    :cond_5
    new-instance v3, Landroid/os/SystemVibrator$MultiVibratorInfo;

    invoke-direct {v3, v2}, Landroid/os/SystemVibrator$MultiVibratorInfo;-><init>([Landroid/os/VibratorInfo;)V

    iput-object v3, p0, Landroid/os/SystemVibrator;->mVibratorInfo:Landroid/os/VibratorInfo;

    monitor-exit v0

    return-object v3

    .line 106
    .end local v1    # "vibratorIds":[I
    .end local v2    # "vibratorInfos":[Landroid/os/VibratorInfo;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist getMaxMagnitude()I
    .locals 1

    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasAmplitudeControl()Z
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroid/os/SystemVibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->hasAmplitudeControl()Z

    move-result v0

    return v0
.end method

.method public whitelist hasVibrator()Z
    .locals 3

    .line 111
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    const-string v0, "Vibrator"

    const-string v2, "Failed to check if vibrator exists; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public whitelist isVibrating()Z
    .locals 6

    .line 120
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    const-string v0, "Vibrator"

    const-string v2, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->getVibratorIds()[I

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v0, v3

    .line 125
    .local v4, "vibratorId":I
    iget-object v5, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v5, v4}, Landroid/os/VibratorManager;->getVibrator(I)Landroid/os/Vibrator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Vibrator;->isVibrating()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    const/4 v0, 0x1

    return v0

    .line 124
    .end local v4    # "vibratorId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_2
    return v1
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/os/Vibrator$OnVibratorStateChangedListener;

    .line 179
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 181
    const-string v0, "Vibrator"

    const-string v1, "Failed to remove vibrate state listener; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator$AllVibratorsStateListener;

    .line 187
    .local v1, "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    invoke-virtual {v1, v2}, Landroid/os/SystemVibrator$AllVibratorsStateListener;->unregister(Landroid/os/VibratorManager;)V

    .line 188
    iget-object v2, p0, Landroid/os/SystemVibrator;->mRegisteredListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v1    # "delegate":Landroid/os/SystemVibrator$AllVibratorsStateListener;
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-direct {p0}, Landroid/os/SystemVibrator;->tryUnregisterBrokenListeners()V

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist semGetNumberOfSupportedPatterns()I
    .locals 4

    .line 680
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const-string v1, "Vibrator"

    if-nez v0, :cond_0

    .line 681
    const-string v0, "Failed to call semGetNumberOfSupportedPatterns; no vibrator service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, -0x1

    return v0

    .line 684
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetNumberOfSupportedPatterns()I

    move-result v0

    .line 685
    .local v0, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetNumberOfSupportedPatterns: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    return v0
.end method

.method public whitelist semGetSupportedVibrationType()I
    .locals 4

    .line 662
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const-string v1, "Vibrator"

    if-nez v0, :cond_0

    .line 663
    const-string v0, "Failed to call semGetSupportedVibrationType; no vibrator service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, -0x1

    return v0

    .line 666
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetSupportedVibrationType()I

    move-result v0

    .line 667
    .local v0, "ret":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semGetSupportedVibrationType: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return v0
.end method

.method public blacklist semIsHapticSupported()Z
    .locals 3

    .line 703
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 704
    const-string v0, "Vibrator"

    const-string v2, "Failed to call semIsHapticSupported; no vibrator service."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    return v1

    .line 707
    :cond_0
    invoke-virtual {v0}, Landroid/os/VibratorManager;->semGetSupportedVibrationType()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public blacklist semIsVibrating()Z
    .locals 1

    .line 728
    invoke-virtual {p0}, Landroid/os/SystemVibrator;->isVibrating()Z

    move-result v0

    return v0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "alwaysOnId"    # I
    .param p4, "effect"    # Landroid/os/VibrationEffect;
    .param p5, "attrs"    # Landroid/os/VibrationAttributes;

    .line 202
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 203
    const-string v0, "Vibrator"

    const-string v1, "Failed to set always-on effect; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    return v0

    .line 206
    :cond_0
    invoke-static {p4}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 207
    .local v0, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v1, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/os/VibratorManager;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/CombinedVibration;Landroid/os/VibrationAttributes;)Z

    move-result v1

    return v1
.end method

.method public blacklist updateWatchConnectionState(Z)V
    .locals 2
    .param p1, "state"    # Z

    .line 715
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 716
    const-string v0, "Vibrator"

    const-string v1, "Failed to update watch connection state; no vibrator service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return-void

    .line 719
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/VibratorManager;->updateWatchConnectionState(Z)V

    .line 720
    return-void
.end method

.method public blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "effect"    # Landroid/os/VibrationEffect;
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "attributes"    # Landroid/os/VibrationAttributes;

    .line 213
    iget-object v0, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    if-nez v0, :cond_0

    .line 214
    const-string v0, "Vibrator"

    const-string v1, "Failed to vibrate; no vibrator manager."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 217
    :cond_0
    invoke-static {p3}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v0

    .line 218
    .local v0, "combinedEffect":Landroid/os/CombinedVibration;
    iget-object v2, p0, Landroid/os/SystemVibrator;->mVibratorManager:Landroid/os/VibratorManager;

    move v3, p1

    move-object v4, p2

    move-object v5, v0

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/os/VibratorManager;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    .line 219
    return-void
.end method
