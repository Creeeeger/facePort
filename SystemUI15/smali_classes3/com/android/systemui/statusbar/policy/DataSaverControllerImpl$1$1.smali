.class public final Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

.field public final synthetic val$isDataSaving:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->this$1:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl$1$1;->val$isDataSaving:Z

    iput p0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mIsDataSavingOn:I

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/DataSaverController$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
