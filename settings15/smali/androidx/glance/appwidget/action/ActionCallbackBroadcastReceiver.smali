.class public final Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "glance-appwidget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    new-instance v0, Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver$onReceive$1;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Landroidx/glance/appwidget/action/ActionCallbackBroadcastReceiver$onReceive$1;-><init>(Landroid/content/Intent;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-static {p0, v0}, Landroidx/glance/appwidget/CoroutineBroadcastReceiverKt;->goAsync$default(Landroid/content/BroadcastReceiver;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
