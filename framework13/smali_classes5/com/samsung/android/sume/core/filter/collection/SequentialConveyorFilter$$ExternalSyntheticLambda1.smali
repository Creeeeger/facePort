.class public final synthetic Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/collection/SequentialConveyorFilter;->lambda$addFilter$0$com-samsung-android-sume-core-filter-collection-SequentialConveyorFilter()Lcom/samsung/android/sume/core/channel/BufferChannel;

    move-result-object v0

    return-object v0
.end method
