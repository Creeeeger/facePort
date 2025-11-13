.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/injection/ControllerFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/BiFunction;


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    check-cast p1, Landroid/app/Application;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;-><init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    return-object p0
.end method
