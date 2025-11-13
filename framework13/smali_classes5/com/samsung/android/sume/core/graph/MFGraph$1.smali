.class Lcom/samsung/android/sume/core/graph/MFGraph$1;
.super Ljava/util/HashMap;
.source "MFGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/graph/MFGraph;->run(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

.field final synthetic blacklist val$diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/cache/DiskCache;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/graph/MFGraph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$diskCache"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->val$diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 130
    iget-object v0, p1, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result v0

    .line 131
    .local v0, "storeCache":Z
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "cache"

    invoke-virtual {p0, p2, v1}, Lcom/samsung/android/sume/core/graph/MFGraph$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v0    # "storeCache":Z
    return-void
.end method
