.class final Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $result:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/gtscell/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    iput-object p2, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-static {v0}, Lcom/samsung/android/gtscell/RemoteCallback;->access$getListener$p(Lcom/samsung/android/gtscell/RemoteCallback;)Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->$result:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
