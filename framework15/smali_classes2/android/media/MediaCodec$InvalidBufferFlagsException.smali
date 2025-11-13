.class public Landroid/media/MediaCodec$InvalidBufferFlagsException;
.super Ljava/lang/RuntimeException;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvalidBufferFlagsException"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/MediaCodec;


# direct methods
.method constructor blacklist <init>(Landroid/media/MediaCodec;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaCodec$InvalidBufferFlagsException;->this$0:Landroid/media/MediaCodec;

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
