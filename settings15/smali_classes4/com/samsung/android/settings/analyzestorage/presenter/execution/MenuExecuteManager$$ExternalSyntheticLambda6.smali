.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    iget p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteArchive;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteArchive"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteCancel;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteCancel"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteFormat;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteFormat"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUnmount;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteUnmount"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteClearAppCache"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteUninstall;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;-><init>()V

    const-string p1, "ExecuteUninstall"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->tag:Ljava/lang/String;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
