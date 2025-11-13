.class Lcom/android/server/FMRadioService$17;
.super Landroid/database/ContentObserver;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor blacklist <init>(Lcom/android/server/FMRadioService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/FMRadioService;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 4387
    iput-object p1, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .line 4390
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4391
    const-string v0, "bike mode onChange"

    invoke-static {v0}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 4392
    iget-object v0, p0, Lcom/android/server/FMRadioService$17;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0}, Lcom/android/server/FMRadioService;->-$$Nest$mhandleBikeMode(Lcom/android/server/FMRadioService;)V

    .line 4393
    return-void
.end method
