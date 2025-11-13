.class Lcom/android/server/SemService$SPITimeoutTask;
.super Ljava/util/TimerTask;
.source "SemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SPITimeoutTask"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/SemService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/SemService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    const-string v0, "SEC_ESE_Service"

    const-string v1, "Close SPI if theree\'s no APDU communication in 30 seconds"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/SemService;->synchronizedCloseSpi(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/SemService$SPITimeoutTask;->this$0:Lcom/android/server/SemService;

    invoke-static {v1}, Lcom/android/server/SemService;->-$$Nest$mreleaseSpiUsage(Lcom/android/server/SemService;)V

    :cond_0
    return-void
.end method
