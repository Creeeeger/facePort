.class Lcom/samsung/android/sume/core/graph/MFGraph$2;
.super Ljava/util/ArrayList;
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
        "Ljava/util/ArrayList<",
        "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

.field final synthetic blacklist val$inBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

.field final synthetic blacklist val$outBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$inBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    iput-object p3, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$outBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$inBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$2;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$outBuffer:Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$2;->add(Ljava/lang/Object;)Z

    return-void
.end method
