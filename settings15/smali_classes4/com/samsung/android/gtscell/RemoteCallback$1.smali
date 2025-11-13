.class public final Lcom/samsung/android/gtscell/RemoteCallback$1;
.super Lcom/samsung/android/gtscell/IRemoteCallback$Stub;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/RemoteCallback;-><init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/samsung/android/gtscell/RemoteCallback$1",
        "Lcom/samsung/android/gtscell/IRemoteCallback$Stub;",
        "sendResult",
        "",
        "data",
        "Landroid/os/Bundle;",
        "gtscell_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/RemoteCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-direct {p0}, Lcom/samsung/android/gtscell/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
