.class final synthetic Lcom/android/settings/spa/app/appinfo/AppDisableButton$confirmDialogPresenter$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/spa/app/appinfo/AppDisableButton$confirmDialogPresenter$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;

    const/16 v0, 0x36a

    invoke-virtual {p0, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->logAction(I)V

    new-instance v0, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$disable$1;

    invoke-direct {v0, p0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter$disable$1;-><init>(Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/spa/app/appinfo/PackageInfoPresenter;->requireAuthAndExecute(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
