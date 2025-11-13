.class public Lcom/sec/android/iaft/IAFTReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IAFTReceiver.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFTManager"

.field public static final blacklist TRACE_RESULT:Ljava/lang/String; = "com.android.internal.intent.action.TRACE_RESULT"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "IAFTManager"

    const-string v1, "IAFTReceiver onReceive."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.android.internal.intent.action.TRACE_RESULT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "code"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "freq"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;->sendResult(III)V

    :cond_0
    return-void
.end method
