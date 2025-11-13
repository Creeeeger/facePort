.class public Lcom/samsung/voicebargein/BargeInEngineWrapper;
.super Ljava/lang/Object;
.source "BargeInEngineWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist uniqueInstance:Lcom/samsung/voicebargein/BargeInEngine;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/voicebargein/BargeInEngineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/voicebargein/BargeInEngineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/samsung/voicebargein/BargeInEngine;
    .locals 3

    const-class v0, Lcom/samsung/voicebargein/BargeInEngineWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->uniqueInstance:Lcom/samsung/voicebargein/BargeInEngine;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new libVoiceCommandEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/voicebargein/BargeInEngine;->init()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/voicebargein/BargeInEngine;

    invoke-direct {v1}, Lcom/samsung/voicebargein/BargeInEngine;-><init>()V

    sput-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->uniqueInstance:Lcom/samsung/voicebargein/BargeInEngine;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot load libVoiceCommandEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed libVoiceCommandEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/voicebargein/BargeInEngineWrapper;->uniqueInstance:Lcom/samsung/voicebargein/BargeInEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
