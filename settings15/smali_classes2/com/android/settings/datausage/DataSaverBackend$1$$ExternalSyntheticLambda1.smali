.class public final synthetic Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datausage/DataSaverBackend$1;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iput-boolean p2, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/datausage/DataSaverBackend$1;

    iget-boolean p0, p0, Lcom/android/settings/datausage/DataSaverBackend$1$$ExternalSyntheticLambda1;->f$1:Z

    iget-object v0, v0, Lcom/android/settings/datausage/DataSaverBackend$1;->this$0:Lcom/android/settings/datausage/DataSaverBackend;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v2, p0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
