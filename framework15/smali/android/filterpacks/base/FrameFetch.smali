.class public Landroid/filterpacks/base/FrameFetch;
.super Landroid/filterfw/core/Filter;
.source "FrameFetch.java"


# instance fields
.field private blacklist mFormat:Landroid/filterfw/core/FrameFormat;
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "format"
    .end annotation
.end field

.field private blacklist mKey:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "key"
    .end annotation
.end field

.field private blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/filterfw/core/FilterContext;->fetchFrame(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    iget-boolean v2, p0, Landroid/filterpacks/base/FrameFetch;->mRepeatFrame:Z

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->closeOutputPort(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xfa

    invoke-virtual {p0, v1}, Landroid/filterpacks/base/FrameFetch;->delayNextProcess(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public blacklist setupPorts()V
    .locals 2

    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/filterfw/core/FrameFormat;->unspecified()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/filterpacks/base/FrameFetch;->mFormat:Landroid/filterfw/core/FrameFormat;

    :goto_0
    const-string v1, "frame"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/base/FrameFetch;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    return-void
.end method
