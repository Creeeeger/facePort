.class public final synthetic Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorWrapper$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;

    check-cast p1, Lcom/samsung/android/sume/core/format/ImageFormat;

    check-cast p2, Lcom/samsung/android/sume/core/format/MutableImageFormat;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/functional/ImageFormatUpdater;->update(Lcom/samsung/android/sume/core/format/ImageFormat;Lcom/samsung/android/sume/core/format/MutableImageFormat;)V

    return-void
.end method
