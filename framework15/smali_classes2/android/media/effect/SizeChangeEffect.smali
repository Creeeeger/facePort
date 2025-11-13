.class public Landroid/media/effect/SizeChangeEffect;
.super Landroid/media/effect/SingleFilterEffect;
.source "SizeChangeEffect.java"


# direct methods
.method public varargs constructor blacklist <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/media/effect/SingleFilterEffect;-><init>(Landroid/media/effect/EffectContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist apply(IIII)V
    .locals 5

    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->beginGLEffect()V

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v0

    iget-object v1, p0, Landroid/media/effect/SizeChangeEffect;->mFunction:Landroid/filterfw/core/FilterFunction;

    iget-object v2, p0, Landroid/media/effect/SizeChangeEffect;->mInputName:Ljava/lang/String;

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/filterfw/core/FilterFunction;->executeWithArgList([Ljava/lang/Object;)Landroid/filterfw/core/Frame;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    invoke-virtual {p0, p4, v2, v3}, Landroid/media/effect/SizeChangeEffect;->frameFromTexture(III)Landroid/filterfw/core/Frame;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/Frame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    invoke-virtual {p0}, Landroid/media/effect/SizeChangeEffect;->endGLEffect()V

    return-void
.end method
