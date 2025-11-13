.class Lcom/samsung/android/sume/core/graph/MFGraph$2;
.super Ljava/util/ArrayList;
.source "MFGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sume/core/graph/MFGraph;->lambda$run$12$com-samsung-android-sume-core-graph-MFGraph(Ljava/util/List;Ljava/util/List;I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
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

.field final synthetic blacklist val$inBuffers:Ljava/util/List;

.field final synthetic blacklist val$it:I

.field final synthetic blacklist val$outBuffers:Ljava/util/List;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/sume/core/graph/MFGraph;Ljava/util/List;ILjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/sume/core/graph/MFGraph;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$inBuffers",
            "val$it",
            "val$outBuffers"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->this$0:Lcom/samsung/android/sume/core/graph/MFGraph;

    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$inBuffers:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$it:I

    iput-object p4, p0, Lcom/samsung/android/sume/core/graph/MFGraph$2;->val$outBuffers:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$2;->add(Ljava/lang/Object;)Z

    .line 141
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/core/graph/MFGraph$2;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method
