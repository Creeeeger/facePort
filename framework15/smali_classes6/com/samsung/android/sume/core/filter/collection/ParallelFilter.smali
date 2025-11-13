.class public abstract Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;
.super Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;
.source "ParallelFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/collection/ParallelFilter$Type;
    }
.end annotation


# instance fields
.field private final blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;",
            "Ljava/util/function/Supplier<",
            "Lcom/samsung/android/sume/core/channel/BufferChannel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/MediaFilterGroupBase;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    iput-object p2, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->channelSupplier:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/ParallelFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/ParallelDescriptor;

    return-object v0
.end method
