.class Lcom/samsung/android/allshare/extension/SECAVPlayer$1;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/extension/SECAVPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mNotifyStopRunnable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SECAVPLAYER"

    invoke-static {v1, v0}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->-$$Nest$fgetmState(Lcom/samsung/android/allshare/extension/SECAVPlayer;)Lcom/samsung/android/allshare/extension/SECAVPlayer$State;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer$State;->-$$Nest$fgetcurrentState(Lcom/samsung/android/allshare/extension/SECAVPlayer$State;)Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->STOPPED:Lcom/samsung/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/allshare/extension/SECAVPlayer$1;->this$0:Lcom/samsung/android/allshare/extension/SECAVPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/extension/SECAVPlayer;->notifyOnStop()V

    return-void

    :cond_0
    return-void
.end method
