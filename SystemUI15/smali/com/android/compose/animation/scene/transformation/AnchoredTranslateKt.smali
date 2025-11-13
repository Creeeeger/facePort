.class public abstract Lcom/android/compose/animation/scene/transformation/AnchoredTranslateKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final throwMissingAnchorException(Ljava/lang/String;Lcom/android/compose/animation/scene/ElementKey;Lcom/android/compose/animation/scene/SceneKey;)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/android/compose/animation/scene/Key;->debugName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\n        Anchor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/android/compose/animation/scene/Key;->debugName:Ljava/lang/String;

    const-string v2, " does not have a target state in scene "

    const-string v3, ".\n        This either means that it was not composed at all during the transition or that it was\n        composed too late, for instance during layout/subcomposition. To avoid flickers in\n        "

    invoke-static {v1, p1, v2, p2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", you should make sure that the composition and layout of anchor is *not*\n        deferred, for instance by moving it out of lazy layouts.\n    "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
