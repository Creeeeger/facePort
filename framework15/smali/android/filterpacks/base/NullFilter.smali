.class public Landroid/filterpacks/base/NullFilter;
.super Landroid/filterfw/core/Filter;
.source "NullFilter.java"


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .locals 1

    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    return-void
.end method

.method public blacklist setupPorts()V
    .locals 1

    const-string v0, "frame"

    invoke-virtual {p0, v0}, Landroid/filterpacks/base/NullFilter;->addInputPort(Ljava/lang/String;)V

    return-void
.end method
