.class final Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;
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
.field synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->this$0:Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance v0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->this$0:Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;-><init>(Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/pm/UserInfo;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->L$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/pm/UserInfo;

    iget-object v0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->this$0:Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;

    iget-object v1, v0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;

    iget-object v0, v0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->applicationContext:Landroid/content/Context;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "no_config_brightness"

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/utils/PolicyRestriction$Restricted;

    invoke-direct {p0, v0}, Lcom/android/systemui/utils/PolicyRestriction$Restricted;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl$restrictionPolicy$1;->this$0:Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;

    iget-object v0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->userRestrictionChecker:Lcom/android/systemui/utils/UserRestrictionChecker;

    iget-object p0, p0, Lcom/android/systemui/brightness/data/repository/BrightnessPolicyRepositoryImpl;->applicationContext:Landroid/content/Context;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/systemui/utils/PolicyRestriction$Restricted;

    new-instance p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {p1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/systemui/utils/PolicyRestriction$Restricted;-><init>(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/utils/PolicyRestriction$NoRestriction;->INSTANCE:Lcom/android/systemui/utils/PolicyRestriction$NoRestriction;

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
