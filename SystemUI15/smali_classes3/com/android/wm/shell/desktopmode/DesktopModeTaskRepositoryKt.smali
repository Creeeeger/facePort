.class public abstract Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepositoryKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final access$toDumpString(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 6

    const-string v3, "]"

    const/16 v5, 0x38

    const-string v1, ", "

    const-string v2, "["

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
