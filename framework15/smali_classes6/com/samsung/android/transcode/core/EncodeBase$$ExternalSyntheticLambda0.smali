.class public final synthetic Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/transcode/core/EncodeBase$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;

    check-cast p1, Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;

    invoke-static {v0, p1}, Lcom/samsung/android/transcode/core/EncodeBase;->lambda$getVideoDecoderOutput$0(Lcom/samsung/android/transcode/unit/decoder/DecodedFrame;Lcom/samsung/android/transcode/unit/decoder/DecoderReleaseListener;)V

    return-void
.end method
