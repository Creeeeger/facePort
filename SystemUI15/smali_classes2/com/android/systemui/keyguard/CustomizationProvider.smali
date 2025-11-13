.class public final Lcom/android/systemui/keyguard/CustomizationProvider;
.super Landroid/content/ContentProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextInitializer;


# instance fields
.field public contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

.field public interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

.field public mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public previewManager:Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;

.field public final uriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/CustomizationProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sget-object v1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "lockscreen_quickaffordance/"

    const-string/jumbo v3, "slots"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "com.android.systemui.customization"

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "affordances"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v1, "selections"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "flags"

    const/4 v2, 0x4

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public static final access$deleteSelection(Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;[Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p3, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;

    invoke-direct {v0, p0, p3}, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$3:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$1:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p2, :cond_9

    array-length p3, p2

    if-eq p3, v5, :cond_4

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    new-instance p3, Lkotlin/Pair;

    aget-object v2, p2, v4

    aget-object p2, p2, v5

    invoke-direct {p3, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    array-length p1, p2

    const-string p2, "Cannot delete selection, selection arguments has wrong size, expected to have 1 or 2 arguments, had "

    const-string p3, " instead!"

    invoke-static {p1, p2, p3}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p3, Lkotlin/Pair;

    aget-object p2, p2, v4

    invoke-direct {p3, p2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {p3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    iput-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->L$3:Ljava/lang/Object;

    iput v5, v0, Lcom/android/systemui/keyguard/CustomizationProvider$deleteSelection$1;->label:I

    invoke-virtual {v2, p2, p3, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->unselect(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_6

    goto :goto_5

    :cond_6
    move-object v6, v0

    move-object v0, p0

    move-object p0, p3

    move-object p3, v6

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const-string v1, " for slot "

    const-string v2, "KeyguardQuickAffordanceProvider"

    if-eqz p3, :cond_8

    const-string p3, "Successfully unselected "

    invoke-static {p3, p0, v1, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_7
    move v4, v5

    goto :goto_4

    :cond_8
    const-string p2, "Failed to unselect "

    invoke-static {p2, p0, v1, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    :goto_5
    return-object v1

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot delete selection, selection arguments not included!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$insertSelection(Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/content/ContentValues;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_b

    const-string/jumbo p2, "slot_id"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "affordance_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    iput-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$insertSelection$1;->label:I

    invoke-virtual {v2, p2, p1, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->select(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v6, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, p2

    move-object p2, v6

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v1, " for slot "

    const-string v2, "KeyguardQuickAffordanceProvider"

    if-eqz p2, :cond_6

    const-string p2, "Successfully selected "

    invoke-static {p2, p0, v1, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_5
    sget-object p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->URI:Landroid/net/Uri;

    move-object v1, p0

    goto :goto_3

    :cond_6
    const-string p2, "Failed to select "

    invoke-static {p2, p0, v1, p1, v2}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    :goto_3
    return-object v1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert selection, affordance ID was empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert selection, slot ID was empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert selection, \"affordance_id\" not specified!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert selection, \"slot_id\" not specified!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot insert selection, no values passed in!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final access$queryAffordances(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/database/MatrixCursor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v11, "enablement_action_intent"

    const-string v12, "configure_intent"

    const-string v5, "id"

    const-string v6, "name"

    const-string v7, "icon"

    const-string v8, "is_enabled"

    const-string v9, "enablement_explanation"

    const-string v10, "enablement_action_text"

    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryAffordances$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->repository:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->getAffordancePickerRepresentations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_6

    :cond_4
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;

    iget-object v5, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->id:Ljava/lang/String;

    new-instance v7, Ljava/lang/Integer;

    iget v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->iconResourceId:I

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    new-instance v8, Ljava/lang/Integer;

    iget-boolean v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->isEnabled:Z

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->actionIntent:Landroid/content/Intent;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v11, v2

    goto :goto_4

    :cond_5
    move-object v11, v3

    :goto_4
    iget-object v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->configureIntent:Landroid/content/Intent;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    goto :goto_5

    :cond_6
    move-object v12, v3

    :goto_5
    iget-object v10, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->actionText:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->name:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->explanation:Ljava/lang/String;

    filled-new-array/range {v5 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    :goto_6
    return-object v1
.end method

.method public static final access$queryFlags(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/database/MatrixCursor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v2, "name"

    const-string/jumbo v4, "value"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$queryFlags$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->getPickerFlags(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/KeyguardPickerFlag;

    iget-object v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardPickerFlag;->name:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardPickerFlag;->value:Z

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-object v1
.end method

.method public static final access$querySelections(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/database/MatrixCursor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v2, "affordance_name"

    const-string/jumbo v4, "slot_id"

    const-string v5, "affordance_id"

    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySelections$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->getSelections(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    :goto_2
    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;

    iget-object v4, v3, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->id:Ljava/lang/String;

    iget-object v3, v3, Lcom/android/systemui/keyguard/shared/model/KeyguardQuickAffordancePickerRepresentation;->name:Ljava/lang/String;

    filled-new-array {v2, v4, v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_4
    return-object v1
.end method

.method public static final access$querySlots(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;

    iget v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;-><init>(Lcom/android/systemui/keyguard/CustomizationProvider;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->L$1:Ljava/lang/Object;

    check-cast p0, Landroid/database/MatrixCursor;

    iget-object v0, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->L$0:Ljava/lang/Object;

    check-cast v0, Landroid/database/MatrixCursor;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    new-instance p1, Landroid/database/MatrixCursor;

    const-string v2, "id"

    const-string v4, "capacity"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->interactor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/systemui/keyguard/CustomizationProvider$querySlots$1;->label:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->getSlotPickerRepresentations(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;

    iget-object v2, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;->id:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    iget v0, v0, Lcom/android/systemui/keyguard/shared/model/KeyguardSlotPickerRepresentation;->maxSelectedAffordances:I

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-object v1
.end method


# virtual methods
.method public final attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {v0, p1}, Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)Lcom/android/systemui/SystemUIInitializer;

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.BIND_WALLPAPER"

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->previewManager:Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    invoke-virtual {p2, p3}, Lcom/android/systemui/keyguard/ui/preview/KeyguardRemotePreviewManager;->preview(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    iget-object p2, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    new-instance v6, Lcom/android/systemui/keyguard/CustomizationProvider$delete$$inlined$runBlocking$1;

    const/4 v2, 0x0

    const-string v1, "KeyguardQuickAffordanceProvider#delete"

    move-object v0, v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/CustomizationProvider$delete$$inlined$runBlocking$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-static {p2, v6}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    move-object v0, v5

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "vnd.android.cursor.dir/vnd."

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    const-string p1, "lockscreen_quickaffordance/"

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    move-object p0, v5

    goto :goto_1

    :cond_1
    const-string p0, "flags"

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "selections"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "affordances"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "slots"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz v0, :cond_6

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "com.android.systemui.customization."

    invoke-static {v0, p1, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    return-object v5
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    new-instance v1, Lcom/android/systemui/keyguard/CustomizationProvider$insert$$inlined$runBlocking$1;

    const-string v2, "KeyguardQuickAffordanceProvider#insert"

    invoke-direct {v1, v2, v0, p0, p2}, Lcom/android/systemui/keyguard/CustomizationProvider$insert$$inlined$runBlocking$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/content/ContentValues;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    new-instance p4, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;

    const-string p5, "KeyguardQuickAffordanceProvider#query"

    invoke-direct {p4, p5, p3, p0, p1}, Lcom/android/systemui/keyguard/CustomizationProvider$query$$inlined$runBlocking$1;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/CustomizationProvider;Landroid/net/Uri;)V

    invoke-static {p2, p4}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public final setContextAvailableCallback(Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/CustomizationProvider;->contextAvailableCallback:Lcom/android/systemui/SystemUIAppComponentFactoryBase$ContextAvailableCallback;

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const-string p0, "KeyguardQuickAffordanceProvider"

    const-string p1, "Update is not supported!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
