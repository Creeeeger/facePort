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

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->val$diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iget-object p2, p2, Lcom/samsung/android/sume/core/graph/MFGraph;->option:Lcom/samsung/android/sume/core/graph/Graph$Option;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/sume/core/graph/Graph$Option;->contains(I)Z

    move-result p2

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$1;->val$diskCache:Lcom/samsung/android/sume/core/cache/DiskCache;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "cache"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/graph/MFGraph$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
