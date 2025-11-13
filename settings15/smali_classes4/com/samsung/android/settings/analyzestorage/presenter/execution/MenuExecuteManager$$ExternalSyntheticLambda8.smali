.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

.field public final synthetic f$1:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda8;->f$1:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;->onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V

    :cond_0
    return-void
.end method
