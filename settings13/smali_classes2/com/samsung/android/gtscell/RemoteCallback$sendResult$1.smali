.class final Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;
.super Ljava/lang/Object;
.source "RemoteCallback.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $result:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/samsung/android/gtscell/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    iput-object p2, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-static {v0}, Lcom/samsung/android/gtscell/RemoteCallback;->access$getListener$p(Lcom/samsung/android/gtscell/RemoteCallback;)Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback$sendResult$1;->$result:Landroid/os/Bundle;

    invoke-interface {v0, p0}, Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    return-void
.end method
