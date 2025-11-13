.class Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;
.super Ljava/lang/Object;
.source "OfflinePackageChecker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandlerExecutor"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "@VoiceIn: OfflinePackageChecker"

    const-string v1, "handler not null"

    .line 185
    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iput-object p1, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/voiceinput/offline/OfflinePackageChecker$HandlerExecutor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is shutting down"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
