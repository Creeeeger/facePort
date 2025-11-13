.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final blacklist SDK_VERSION_R:I = 0x1e


# instance fields
.field private greylist-max-o mCallAudioState:Landroid/telecom/CallAudioState;

.field private final greylist-max-o mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCallingPackage:Ljava/lang/String;

.field private final greylist-max-o mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCanAddCall:Z

.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final greylist-max-o mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private final greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .locals 1
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "targetSdkVersion"    # I

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    .line 148
    iput-object p1, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 149
    iput-object p2, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    .line 150
    iput p3, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    .line 151
    return-void
.end method

.method private greylist-max-o checkCallTree(Landroid/telecom/ParcelableCall;)V
    .locals 4
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 471
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 473
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 475
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 474
    const-string v2, "ParcelableCall %s has nonexistent child %s"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private greylist-max-o fireBringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .line 453
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 454
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    .line 455
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method private greylist-max-o fireCallAdded(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 434
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 435
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    .line 436
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method private greylist-max-o fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .line 446
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 447
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    .line 448
    new-instance v2, Landroid/telecom/AudioState;

    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    .line 449
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 450
    :cond_0
    return-void
.end method

.method private greylist-max-o fireCallRemoved(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .line 440
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 441
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    .line 442
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 443
    :cond_0
    return-void
.end method

.method private greylist-max-o fireCanAddCallChanged(Z)V
    .locals 2
    .param p1, "canAddCall"    # Z

    .line 459
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 460
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    .line 461
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 462
    :cond_0
    return-void
.end method

.method private greylist-max-o fireSilenceRinger()V
    .locals 2

    .line 465
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 466
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0}, Landroid/telecom/Phone$Listener;->onSilenceRinger(Landroid/telecom/Phone;)V

    .line 467
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    goto :goto_0

    .line 468
    :cond_0
    return-void
.end method


# virtual methods
.method public final whitelist addListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .line 316
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method public final whitelist canAddCall()Z
    .locals 1

    .line 345
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    return v0
.end method

.method final greylist-max-o destroy()V
    .locals 5

    .line 299
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    .line 300
    .local v1, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 301
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_0

    .line 302
    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 304
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    .line 305
    invoke-virtual {v1}, Landroid/telecom/Call;->internalSetDisconnected()V

    .line 307
    .end local v1    # "call":Landroid/telecom/Call;
    .end local v2    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :cond_1
    goto :goto_0

    .line 308
    :cond_2
    return-void
.end method

.method public final whitelist getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 421
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final whitelist getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method blacklist getCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Call;

    monitor-exit v0

    return-object v1

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Landroid/telecom/Phone;->mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method final greylist-max-o internalAddCall(Landroid/telecom/ParcelableCall;)V
    .locals 9
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 154
    iget v0, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 156
    const-string v0, "Skipping adding audio processing call for sdk compatibility"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 161
    .local v0, "call":Landroid/telecom/Call;
    if-nez v0, :cond_1

    .line 162
    new-instance v1, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 163
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v6

    iget-object v7, p0, Landroid/telecom/Phone;->mCallingPackage:Ljava/lang/String;

    iget v8, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V

    .line 165
    .end local v0    # "call":Landroid/telecom/Call;
    .local v2, "call":Landroid/telecom/Call;
    iget-object v3, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_0
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 171
    iget-object v0, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v2, p1, v0}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 172
    invoke-direct {p0, v2}, Landroid/telecom/Phone;->fireCallAdded(Landroid/telecom/Call;)V

    move-object v0, v2

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 174
    .end local v2    # "call":Landroid/telecom/Call;
    .restart local v0    # "call":Landroid/telecom/Call;
    :cond_1
    const-string v2, "Call %s added, but it was already present"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 176
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 178
    :goto_0
    return-void
.end method

.method final greylist-max-o internalBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .line 246
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireBringToForeground(Z)V

    .line 247
    return-void
.end method

.method final greylist-max-o internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .line 235
    iget-object v0, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iput-object p1, p0, Landroid/telecom/Phone;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 237
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 239
    :cond_0
    return-void
.end method

.method final greylist-max-o internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;

    .line 242
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 261
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 262
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete(Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 290
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Landroid/telecom/Call;->internalOnHandoverComplete()V

    .line 293
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "error"    # I

    .line 282
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 283
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnHandoverFailed(I)V

    .line 286
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 275
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 276
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttInitiationFailure(I)V

    .line 279
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(Ljava/lang/String;I)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "requestId"    # I

    .line 268
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 269
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalOnRttUpgradeRequest(I)V

    .line 272
    :cond_0
    return-void
.end method

.method final greylist-max-o internalRemoveCall(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "call"    # Landroid/telecom/Call;

    .line 181
    iget-object v0, p0, Landroid/telecom/Phone;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v1, p0, Landroid/telecom/Phone;->mCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 187
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 190
    :cond_0
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCallRemoved(Landroid/telecom/Call;)V

    .line 191
    return-void

    .line 184
    .end local v0    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final greylist-max-o internalSetCanAddCall(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .line 250
    iget-boolean v0, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    if-eq v0, p1, :cond_0

    .line 251
    iput-boolean p1, p0, Landroid/telecom/Phone;->mCanAddCall:Z

    .line 252
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->fireCanAddCallChanged(Z)V

    .line 254
    :cond_0
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .line 228
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 229
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    .line 232
    :cond_0
    return-void
.end method

.method final greylist-max-o internalSilenceRinger()V
    .locals 0

    .line 257
    invoke-direct {p0}, Landroid/telecom/Phone;->fireSilenceRinger()V

    .line 258
    return-void
.end method

.method final greylist-max-o internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .locals 4
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .line 194
    iget v0, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_1

    .line 195
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 196
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "removing audio processing call during update for sdk compatibility"

    invoke-static {p0, v1, v0}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 198
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 201
    :cond_0
    return-void

    .line 204
    .end local v0    # "call":Landroid/telecom/Call;
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Phone;->getCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 205
    .restart local v0    # "call":Landroid/telecom/Call;
    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0, p1}, Landroid/telecom/Phone;->checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 207
    iget-object v1, p0, Landroid/telecom/Phone;->mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    goto :goto_0

    .line 213
    :cond_2
    iget v3, p0, Landroid/telecom/Phone;->mTargetSdkVersion:I

    if-ge v3, v2, :cond_4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    .line 214
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 215
    :cond_3
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "adding call during update for sdk compatibility"

    invoke-static {p0, v2, v1}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p1}, Landroid/telecom/Phone;->internalAddCall(Landroid/telecom/ParcelableCall;)V

    .line 219
    :cond_4
    :goto_0
    return-void
.end method

.method public final whitelist removeListener(Landroid/telecom/Phone$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .line 325
    if-eqz p1, :cond_0

    .line 326
    iget-object v0, p0, Landroid/telecom/Phone;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 328
    :cond_0
    return-void
.end method

.method public whitelist requestBluetoothAudio(Ljava/lang/String;)V
    .locals 1
    .param p1, "bluetoothAddress"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->requestBluetoothAudio(Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method public final whitelist setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .line 365
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    .line 366
    return-void
.end method

.method public final whitelist setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 355
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    .line 356
    return-void
.end method

.method public final greylist-max-p setProximitySensorOff(Z)V
    .locals 1
    .param p1, "screenOnImmediately"    # Z

    .line 410
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    .line 411
    return-void
.end method

.method public final greylist-max-p setProximitySensorOn()V
    .locals 1

    .line 392
    iget-object v0, p0, Landroid/telecom/Phone;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    .line 393
    return-void
.end method
