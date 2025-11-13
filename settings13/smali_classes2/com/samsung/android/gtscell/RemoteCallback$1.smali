.class public final Lcom/samsung/android/gtscell/RemoteCallback$1;
.super Lcom/samsung/android/gtscell/IRemoteCallback$Stub;
.source "RemoteCallback.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gtscell/RemoteCallback;-><init>(Lcom/samsung/android/gtscell/RemoteCallback$OnResultListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gtscell/RemoteCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/gtscell/RemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/samsung/android/gtscell/RemoteCallback$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-direct {p0}, Lcom/samsung/android/gtscell/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p0, p0, Lcom/samsung/android/gtscell/RemoteCallback$1;->this$0:Lcom/samsung/android/gtscell/RemoteCallback;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gtscell/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void
.end method
