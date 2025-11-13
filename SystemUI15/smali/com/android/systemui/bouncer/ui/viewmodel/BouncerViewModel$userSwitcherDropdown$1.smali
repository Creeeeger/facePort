.class final Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# instance fields
.field synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;

    invoke-direct {p0, p3}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;-><init>(Lkotlin/coroutines/Continuation;)V

    iput-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->L$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->L$0:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1;->L$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    new-instance v4, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$UserSwitcherDropdownItemViewModel;

    new-instance v5, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    iget-object v6, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->image:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v6, v3}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object v3, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1$1$1;->INSTANCE:Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$userSwitcherDropdown$1$1$1;

    :cond_0
    iget-object v2, v2, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->name:Lcom/android/systemui/common/shared/model/Text;

    invoke-direct {v4, v5, v2, v3}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$UserSwitcherDropdownItemViewModel;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;

    new-instance v2, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$UserSwitcherDropdownItemViewModel;

    new-instance v4, Lcom/android/systemui/common/shared/model/Icon$Resource;

    iget v5, v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->iconResourceId:I

    invoke-direct {v4, v5, v3}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    new-instance v5, Lcom/android/systemui/common/shared/model/Text$Resource;

    iget v6, v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->textResourceId:I

    invoke-direct {v5, v6}, Lcom/android/systemui/common/shared/model/Text$Resource;-><init>(I)V

    iget-object v1, v1, Lcom/android/systemui/user/ui/viewmodel/UserActionViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    invoke-direct {v2, v4, v5, v1}, Lcom/android/systemui/bouncer/ui/viewmodel/BouncerViewModel$UserSwitcherDropdownItemViewModel;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Text;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
