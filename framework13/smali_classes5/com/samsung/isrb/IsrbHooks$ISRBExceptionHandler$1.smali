.class Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;
.super Ljava/lang/Object;
.source "IsrbHooks.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;

    .line 243
    iput-object p1, p0, Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler$1;->this$0:Lcom/samsung/isrb/IsrbHooks$ISRBExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 245
    invoke-static {}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$smgetEnterIdle()Z

    move-result v0

    const-string v1, "IsrbHooks"

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "successfully enter idle"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void

    .line 249
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/samsung/isrb/IsrbHooks;->-$$Nest$sfputmState(I)V

    .line 250
    const-string v0, "can not enter idle, we should back to rescue party"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "exit frorm loop to next step"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
