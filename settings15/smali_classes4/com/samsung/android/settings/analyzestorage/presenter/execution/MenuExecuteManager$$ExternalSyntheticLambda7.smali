.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    return-void
.end method
