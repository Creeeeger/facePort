.class public interface abstract Lcom/samsung/android/sume/core/filter/MediaFilter;
.super Ljava/lang/Object;
.source "MediaFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/message/MessageConsumer;
.implements Lcom/samsung/android/sume/core/functional/Operator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/filter/MediaFilter$Option;,
        Lcom/samsung/android/sume/core/filter/MediaFilter$OptionType;,
        Lcom/samsung/android/sume/core/filter/MediaFilter$Type;
    }
.end annotation


# static fields
.field public static final blacklist OPTION_ALLOW_PARTIAL_CONNECTION:I = 0x0

.field public static final blacklist OPTION_AS_INPUT:I = 0x8

.field public static final blacklist OPTION_AS_OUTPUT:I = 0x9

.field public static final blacklist OPTION_BATCH_IO:I = 0x5

.field public static final blacklist OPTION_EXTERNAL_BUFFER_COMPOSER:I = 0x3

.field public static final blacklist OPTION_IGNORABLE_FILTER:I = 0xa

.field public static final blacklist OPTION_INPUT_WITH_EVALUATION_VALUE:I = 0x7

.field public static final blacklist OPTION_KEEP_FILTER_DATA_TYPE:I = 0x4

.field public static final blacklist OPTION_PAD:I = 0x1

.field public static final blacklist OPTION_SPLIT_TYPE:I = 0x2

.field public static final blacklist OPTION_WAIT_RECEIVE_ALL:I = 0x6


# virtual methods
.method public blacklist accept(Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .locals 0

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/sume/core/filter/MediaFilterRetriever;->retrieve(Lcom/samsung/android/sume/core/filter/MediaFilter;Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    return-void
.end method

.method public abstract blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;

    invoke-virtual {v1}, Lcom/samsung/android/sume/core/descriptor/nn/NNDescriptor;->getModelId()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;->getFilterId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist pause()V
    .locals 0

    return-void
.end method

.method public blacklist prepare()V
    .locals 0

    return-void
.end method

.method public blacklist release()V
    .locals 0

    return-void
.end method

.method public blacklist resume()V
    .locals 0

    return-void
.end method

.method public blacklist setMessageProducer(Lcom/samsung/android/sume/core/message/MessageProducer;)V
    .locals 0

    return-void
.end method

.method public abstract blacklist stream()Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation
.end method
