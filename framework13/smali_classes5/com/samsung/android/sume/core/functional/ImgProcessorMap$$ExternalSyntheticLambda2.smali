.class public final synthetic Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/format/MutableImageFormat;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/format/ImageFormat;

.field public final synthetic blacklist f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    iput-object p2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sume/core/format/ImageFormat;

    iput-object p3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/format/MutableImageFormat;

    iget-object v1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sume/core/format/ImageFormat;

    iget-object v2, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorMap$$ExternalSyntheticLambda2;->f$2:Ljava/util/Map;

    check-cast p1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/sume/core/functional/ImgProcessorMap;->lambda$process$0(Lcom/samsung/android/sume/core/format/MutableImageFormat;Lcom/samsung/android/sume/core/format/ImageFormat;Ljava/util/Map;Lcom/samsung/android/sume/core/functional/ImgProcessor;)V

    return-void
.end method
