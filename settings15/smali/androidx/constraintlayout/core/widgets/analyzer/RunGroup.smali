.class public final Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mFirstRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field public mRuns:Ljava/util/ArrayList;


# direct methods
.method public static traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_0

    return-wide p1

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    int-to-long v6, v6

    add-long/2addr v6, p1

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne p0, v1, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v1

    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    sub-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseEnd(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    int-to-long v2, p0

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    :cond_4
    return-wide v3
.end method

.method public static traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J
    .locals 8

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;

    if-eqz v1, :cond_0

    return-wide p1

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move-wide v3, p1

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mDependencies:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    instance-of v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-eqz v6, :cond_2

    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mRun:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    int-to-long v6, v6

    add-long/2addr v6, p1

    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    if-ne p0, v1, :cond_4

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->getWrapDimension()J

    move-result-wide v1

    iget-object p0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    add-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;->traverseStart(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget p0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->mMargin:I

    int-to-long v2, p0

    sub-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_4
    return-wide v3
.end method
