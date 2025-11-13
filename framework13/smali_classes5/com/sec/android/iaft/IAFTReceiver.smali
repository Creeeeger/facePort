.class public Lcom/sec/android/iaft/IAFTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IAFTReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFTManager"

.field public static final blacklist TRACE_RESULT:Ljava/lang/String; = "com.android.internal.intent.action.TRACE_RESULT"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 56
    const-string v0, "IAFTManager"

    const-string v1, "IAFTReceiver onReceive."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.internal.intent.action.TRACE_RESULT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 59
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 60
    .local v1, "tid":I
    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 61
    .local v2, "code":I
    const-string v3, "freq"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 62
    .local v3, "freq":I
    invoke-static {v1, v2, v3}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;->sendResult(III)V

    .line 64
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "tid":I
    .end local v2    # "code":I
    .end local v3    # "freq":I
    :cond_0
    return-void
.end method
