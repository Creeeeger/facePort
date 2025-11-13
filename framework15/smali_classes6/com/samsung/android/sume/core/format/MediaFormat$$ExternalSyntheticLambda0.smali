.class public final synthetic Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/types/DataType;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/format/Shape;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/types/DataType;

    iput-object p3, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sume/core/format/Shape;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$1:Lcom/samsung/android/sume/core/types/DataType;

    iget-object v2, p0, Lcom/samsung/android/sume/core/format/MediaFormat$$ExternalSyntheticLambda0;->f$2:Lcom/samsung/android/sume/core/format/Shape;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/format/MediaFormat;->lambda$getPlanes$0(Ljava/util/List;Lcom/samsung/android/sume/core/types/DataType;Lcom/samsung/android/sume/core/format/Shape;I)V

    return-void
.end method
