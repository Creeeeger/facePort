.class Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;
.super Landroid/database/ContentObserver;
.source "IAFDDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerIAFDObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDDBManager;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDDBManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .line 406
    iput-object p1, p0, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    .line 407
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 408
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .line 412
    const-string v0, "IAFDDBManager"

    const-string v1, "DB onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/sec/android/iaft/IAFDDBManager$SmartManagerIAFDObserver;->this$0:Lcom/sec/android/iaft/IAFDDBManager;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDDBManager;->-$$Nest$fgetmIAFDDBManagerHandler(Lcom/sec/android/iaft/IAFDDBManager;)Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;

    move-result-object v0

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/sec/android/iaft/IAFDDBManager$IAFDDBManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method
