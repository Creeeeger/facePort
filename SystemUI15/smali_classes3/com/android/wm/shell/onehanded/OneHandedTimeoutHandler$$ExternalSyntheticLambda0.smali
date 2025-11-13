.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedTimeoutHandler;->mListeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda10;

    const/4 v2, 0x6

    iget-object v1, v1, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda10;->f$0:Lcom/android/wm/shell/onehanded/OneHandedController;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
