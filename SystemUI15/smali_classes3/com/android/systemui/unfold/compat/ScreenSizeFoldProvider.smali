.class public final Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/unfold/updates/FoldProvider;


# instance fields
.field public final callbacks:Ljava/util/List;

.field public isFolded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->onConfigurationChange(Landroid/content/res/Configuration;)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChange(Landroid/content/res/Configuration;)V
    .locals 2

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    iget-object p1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;

    iget-boolean v1, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;->onFoldUpdated(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final registerCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->isFolded:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;->onFoldUpdated(Z)V

    return-void
.end method

.method public final unregisterCallback(Lcom/android/systemui/unfold/updates/FoldProvider$FoldCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/unfold/compat/ScreenSizeFoldProvider;->callbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
