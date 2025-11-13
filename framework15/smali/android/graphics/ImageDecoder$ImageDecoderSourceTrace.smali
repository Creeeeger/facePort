.class final Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;
.super Ljava/lang/Object;
.source "ImageDecoder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ImageDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageDecoderSourceTrace"
.end annotation


# instance fields
.field private final blacklist mResourceTracingEnabled:Z


# direct methods
.method constructor blacklist <init>(Landroid/graphics/ImageDecoder;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    iput-boolean v2, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    iget-boolean v2, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->-$$Nest$smdescribeDecoderForTrace(Landroid/graphics/ImageDecoder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    iget-boolean v0, p0, Landroid/graphics/ImageDecoder$ImageDecoderSourceTrace;->mResourceTracingEnabled:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x2000

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    :cond_0
    return-void
.end method
