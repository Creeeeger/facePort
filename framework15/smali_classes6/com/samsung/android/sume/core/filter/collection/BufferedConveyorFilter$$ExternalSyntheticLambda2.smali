.class public final synthetic Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;

.field public final synthetic blacklist f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

.field public final synthetic blacklist f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

.field public final synthetic blacklist f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iput-object p3, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    iput-object p4, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;

    iget-object v1, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$1:Lcom/samsung/android/sume/core/channel/BufferChannel;

    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$2:Lcom/samsung/android/sume/core/filter/MediaFilter;

    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter$$ExternalSyntheticLambda2;->f$3:Lcom/samsung/android/sume/core/channel/BufferChannel;

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/filter/collection/BufferedConveyorFilter;->lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-BufferedConveyorFilter(Lcom/samsung/android/sume/core/channel/BufferChannel;Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/channel/BufferChannel;)V

    return-void
.end method
