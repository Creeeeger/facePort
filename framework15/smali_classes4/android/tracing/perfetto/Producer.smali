.class public Landroid/tracing/perfetto/Producer;
.super Ljava/lang/Object;
.source "Producer.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist init(Landroid/tracing/perfetto/InitArguments;)V
    .locals 2

    iget v0, p0, Landroid/tracing/perfetto/InitArguments;->backends:I

    iget v1, p0, Landroid/tracing/perfetto/InitArguments;->shmemSizeHintKb:I

    invoke-static {v0, v1}, Landroid/tracing/perfetto/Producer;->nativePerfettoProducerInit(II)V

    return-void
.end method

.method private static native blacklist nativePerfettoProducerInit(II)V
.end method
