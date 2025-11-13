.class public Lcom/samsung/android/sepunion/SemGoodCatchManager;
.super Ljava/lang/Object;
.source "SemGoodCatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GOOD_CATCH_STATE_CHANGED:Ljava/lang/String; = "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mService:Lcom/samsung/android/sepunion/IGoodCatchManager;


# instance fields
.field private final blacklist MSG_START:I

.field private final blacklist MSG_STOP:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mFunction:[Ljava/lang/String;

.field private final blacklist mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mICallback:Landroid/os/IBinder;

.field private blacklist mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

.field private blacklist mModule:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    .line 114
    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    .line 126
    new-instance v0, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "function"    # [Ljava/lang/String;
    .param p4, "l"    # Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mICallback:Landroid/os/IBinder;

    .line 111
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_START:I

    .line 112
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->MSG_STOP:I

    .line 114
    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sepunion/SemGoodCatchManager$1;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;)V

    iput-object v1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mGoodCatchDispatcher:Lcom/samsung/android/sepunion/IGoodCatchDispatcher;

    .line 126
    new-instance v2, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/sepunion/SemGoodCatchManager$2;-><init>(Lcom/samsung/android/sepunion/SemGoodCatchManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mHandler:Landroid/os/Handler;

    .line 39
    if-eqz p3, :cond_1

    .line 42
    iput-object p1, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mListener:Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    .line 46
    const-string/jumbo v2, "sepunion"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 47
    .local v2, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v3, "goodcatch"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 48
    .local v3, "b":Landroid/os/IBinder;
    invoke-static {v3}, Lcom/samsung/android/sepunion/IGoodCatchManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/sepunion/IGoodCatchManager;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    .line 50
    if-nez v4, :cond_0

    .line 51
    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to SemGoodCatchManager; no service."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-interface {v4, v5, p3, v1, v0}, Lcom/samsung/android/sepunion/IGoodCatchManager;->registerListener(Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/IGoodCatchDispatcher;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 61
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SemGoodCatchManager is created, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void

    .line 40
    .end local v2    # "um":Lcom/samsung/android/sepunion/SemUnionManager;
    .end local v3    # "b":Landroid/os/IBinder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getSelectedSettingKey()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    const/4 v0, 0x0

    .line 92
    .local v0, "db_keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v1, :cond_0

    .line 93
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update; no service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    return-object v1

    .line 97
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/sepunion/IGoodCatchManager;->getSelectedSettingKey()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 98
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectedSettingKey() : db_keys="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 103
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method public blacklist update(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "state"    # I
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "time":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v1, :cond_0

    .line 67
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update; no service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_0
    const/4 v2, 0x7

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    const/4 v3, 0x6

    aput-object p5, v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/sepunion/IGoodCatchManager;->update([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 75
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "function"    # Ljava/lang/String;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "state"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "extra"    # Ljava/lang/String;

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "time":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mService:Lcom/samsung/android/sepunion/IGoodCatchManager;

    if-nez v1, :cond_0

    .line 80
    sget-object v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to update; no service."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x7

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/sepunion/SemGoodCatchManager;->mModule:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v3, 0x4

    aput-object p3, v2, v3

    const/4 v3, 0x5

    aput-object p4, v2, v3

    const/4 v3, 0x6

    aput-object p5, v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/sepunion/IGoodCatchManager;->update([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
