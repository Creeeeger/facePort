.class public final synthetic Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/buffer/BufferExtension;

.field public final synthetic blacklist f$1:Ljava/util/List;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;->f$3:Ljava/util/Map;

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->lambda$findAvailableBinaryKey$34$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    move-result-object p1

    return-object p1
.end method
