.class Lcom/samsung/android/sume/nn/SumeNNClient$1;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SumeNNClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNNClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Lcom/samsung/android/sume/op/OpRuntime;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/nn/SumeNNClient;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNNClient;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/sume/nn/SumeNNClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNNClient$1;->this$0:Lcom/samsung/android/sume/nn/SumeNNClient;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 97
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->CPU:Lcom/samsung/android/sume/op/OpRuntime;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->GPU:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->NPU:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->DSP:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNNClient$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method
