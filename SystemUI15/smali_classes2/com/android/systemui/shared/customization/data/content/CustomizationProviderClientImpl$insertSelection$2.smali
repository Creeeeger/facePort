.class final Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $affordanceId:Ljava/lang/String;

.field final synthetic $slotId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    iput-object p2, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$slotId:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$affordanceId:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;

    iget-object v0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    iget-object v1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$slotId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$affordanceId:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;-><init>(Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->this$0:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;

    iget-object p1, p1, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->INSTANCE:Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderContract$LockScreenQuickAffordances$SelectionTable;->URI:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$slotId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/shared/customization/data/content/CustomizationProviderClientImpl$insertSelection$2;->$affordanceId:Ljava/lang/String;

    const-string/jumbo v3, "slot_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "affordance_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
