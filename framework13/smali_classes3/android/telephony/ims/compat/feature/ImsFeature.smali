.class public abstract Landroid/telephony/ims/compat/feature/ImsFeature;
.super Ljava/lang/Object;
.source "ImsFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/compat/feature/ImsFeature$ImsState;
    }
.end annotation


# static fields
.field public static final greylist-max-o EMERGENCY_MMTEL:I = 0x0

.field public static final greylist-max-o INVALID:I = -0x1

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ImsFeature"

.field public static final greylist-max-o MAX:I = 0x3

.field public static final greylist-max-o MMTEL:I = 0x1

.field public static final greylist-max-o RCS:I = 0x2

.field public static final greylist-max-o STATE_INITIALIZING:I = 0x1

.field public static final greylist-max-o STATE_NOT_AVAILABLE:I = 0x0

.field public static final greylist-max-o STATE_READY:I = 0x2


# instance fields
.field protected greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mSlotId:I

.field private greylist-max-o mState:I

.field private final greylist-max-o mStatusCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/ims/internal/IImsFeatureStatusCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    return-void
.end method

.method private greylist-max-o notifyFeatureState(I)V
    .locals 7
    .param p1, "state"    # I

    .line 125
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 127
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .local v2, "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_start_1
    const-string v3, "ImsFeature"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifying ImsFeatureState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {v2, p1}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    goto :goto_1

    .line 132
    :catch_0
    move-exception v3

    .line 134
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 135
    const-string v4, "ImsFeature"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t notify feature state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v2    # "callback":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 138
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/ims/internal/IImsFeatureStatusCallback;>;"
    :cond_0
    monitor-exit v0

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public greylist-max-o addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 4
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 96
    if-nez p1, :cond_0

    .line 97
    return-void

    .line 101
    :cond_0
    :try_start_0
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    invoke-interface {p1, v0}, Lcom/android/ims/internal/IImsFeatureStatusCallback;->notifyImsFeatureStatus(I)V

    .line 103
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    monitor-exit v0

    .line 108
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/telephony/ims/compat/feature/ImsFeature;
    .end local p1    # "c":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    .restart local p0    # "this":Landroid/telephony/ims/compat/feature/ImsFeature;
    .restart local p1    # "c":Lcom/android/ims/internal/IImsFeatureStatusCallback;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ImsFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t notify feature state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public abstract greylist-max-o getBinder()Landroid/os/IInterface;
.end method

.method public greylist-max-r getFeatureState()I
    .locals 1

    .line 84
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    return v0
.end method

.method public abstract greylist-max-o onFeatureReady()V
.end method

.method public abstract greylist-max-o onFeatureRemoved()V
.end method

.method public greylist-max-o removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 2
    .param p1, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;

    .line 112
    if-nez p1, :cond_0

    .line 113
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    monitor-enter v0

    .line 116
    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mStatusCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 75
    iput-object p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method protected final greylist-max-r setFeatureState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 89
    iget v0, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    if-eq v0, p1, :cond_0

    .line 90
    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mState:I

    .line 91
    invoke-direct {p0, p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->notifyFeatureState(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public greylist-max-o setSlotId(I)V
    .locals 0
    .param p1, "slotId"    # I

    .line 79
    iput p1, p0, Landroid/telephony/ims/compat/feature/ImsFeature;->mSlotId:I

    .line 80
    return-void
.end method
