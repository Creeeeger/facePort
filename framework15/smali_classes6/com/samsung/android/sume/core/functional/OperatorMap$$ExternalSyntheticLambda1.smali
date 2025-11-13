.class public final synthetic Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object p3, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$1:Lcom/samsung/android/sume/core/format/MediaFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/functional/OperatorMap$$ExternalSyntheticLambda1;->f$2:Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/functional/OperatorMap;->lambda$inferOperations$3(Lcom/samsung/android/sume/core/format/MutableMediaFormat;Lcom/samsung/android/sume/core/format/MediaFormat;Lcom/samsung/android/sume/core/functional/OpPriorityByDataSize;Ljava/util/Map$Entry;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
