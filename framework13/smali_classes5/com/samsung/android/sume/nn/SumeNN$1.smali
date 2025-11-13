.class Lcom/samsung/android/sume/nn/SumeNN$1;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Lcom/samsung/android/sume/op/OpRuntime;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/nn/SumeNN;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/nn/SumeNN;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/sume/nn/SumeNN;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$1;->this$0:Lcom/samsung/android/sume/nn/SumeNN;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 206
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->CPU:Lcom/samsung/android/sume/op/OpRuntime;

    const-wide/16 v1, 0xbb8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNN$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->GPU:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNN$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->NPU:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNN$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/samsung/android/sume/op/OpRuntime;->DSP:Lcom/samsung/android/sume/op/OpRuntime;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/nn/SumeNN$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void
.end method
