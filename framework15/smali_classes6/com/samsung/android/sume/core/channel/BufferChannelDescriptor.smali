.class public Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;
.super Ljava/lang/Object;
.source "BufferChannelDescriptor.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field blacklist capacity:I

.field blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;-><init>(II)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;-><init>(II)V

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->type:I

    iput p2, p0, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->capacity:I

    return-void
.end method


# virtual methods
.method public blacklist getCapacity()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->capacity:I

    return v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/channel/BufferChannelDescriptor;->type:I

    return v0
.end method
