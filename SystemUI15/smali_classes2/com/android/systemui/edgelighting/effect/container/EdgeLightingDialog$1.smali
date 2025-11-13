.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-static {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->-$$Nest$mdismissInternal(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;)V

    :goto_0
    return-void
.end method
