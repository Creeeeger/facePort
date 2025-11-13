.class public final Lcom/android/settings/datausage/AppDataUsageCycleController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u007f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0004*\u0001\u000c\u0008\u0007\u0018\u0000 42\u00020\u0001:\u00014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0014\u0010\u001e\u001a\u00020\u00122\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011J\u0010\u0010\u001f\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\u000fH\u0016J\"\u0010#\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\u0014J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J\u001c\u0010\'\u001a\u00020\u00122\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0\u001b2\u0006\u0010*\u001a\u00020)J\u000e\u0010+\u001a\u00020\u0012H\u0082@\u00a2\u0006\u0002\u0010,J&\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201H\u0082@\u00a2\u0006\u0002\u00102J\u001e\u00103\u001a\u00020\u00122\u0006\u0010.\u001a\u00020)2\u0006\u0010/\u001a\u00020)2\u0006\u00100\u001a\u000201R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00120\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lcom/android/settings/datausage/AppDataUsageCycleController;",
        "Lcom/android/settings/core/BasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "cycleAdapter",
        "Lcom/android/settings/datausage/CycleAdapter;",
        "cycleListener",
        "com/android/settings/datausage/AppDataUsageCycleController$cycleListener$1",
        "Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;",
        "mCyclePosition",
        "",
        "onDateSetByUser",
        "Lkotlin/Function0;",
        "",
        "onUsageDataUpdated",
        "Lkotlin/Function1;",
        "Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;",
        "preference",
        "Lcom/android/settings/datausage/SpinnerPreference;",
        "repository",
        "Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;",
        "usageDetailsDataList",
        "",
        "usageDetailsDataListCHN",
        "",
        "dateSetByUser",
        "displayPreference",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "init",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "setInitialCycles",
        "initialCycles",
        "",
        "initialSelectedEndTime",
        "update",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateAdapter",
        "startTime",
        "endTime",
        "needAddItem",
        "",
        "(JJZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateView",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final Companion:Lcom/android/settings/datausage/AppDataUsageCycleController$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private final cycleListener:Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;

.field private mCyclePosition:I

.field private onDateSetByUser:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private onUsageDataUpdated:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private preference:Lcom/android/settings/datausage/SpinnerPreference;

.field private repository:Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;

.field private usageDetailsDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;",
            ">;"
        }
    .end annotation
.end field

.field private usageDetailsDataListCHN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/AppDataUsageCycleController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->Companion:Lcom/android/settings/datausage/AppDataUsageCycleController$Companion;

    sget-object v0, Lkotlin/jvm/internal/Reflection;->factory:Lkotlin/jvm/internal/ReflectionFactory;

    const-class v1, Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-virtual {v0, v1}, Lkotlin/jvm/internal/ReflectionFactory;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/android/settings/datausage/AppDataUsageCycleController$onUsageDataUpdated$1;->INSTANCE:Lcom/android/settings/datausage/AppDataUsageCycleController$onUsageDataUpdated$1;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onUsageDataUpdated:Lkotlin/jvm/functions/Function1;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataListCHN:Ljava/util/List;

    sget-object p1, Lcom/android/settings/datausage/AppDataUsageCycleController$onDateSetByUser$1;->INSTANCE:Lcom/android/settings/datausage/AppDataUsageCycleController$onDateSetByUser$1;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onDateSetByUser:Lkotlin/jvm/functions/Function0;

    new-instance p1, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleListener:Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;

    return-void
.end method

.method public static final synthetic access$getCycleAdapter$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method public static final synthetic access$getMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->mCyclePosition:I

    return p0
.end method

.method public static final synthetic access$getOnDateSetByUser$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lkotlin/jvm/functions/Function0;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onDateSetByUser:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getOnUsageDataUpdated$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onUsageDataUpdated:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getPreference$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->repository:Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;

    return-object p0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUsageDetailsDataList$p(Lcom/android/settings/datausage/AppDataUsageCycleController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setMCyclePosition$p(Lcom/android/settings/datausage/AppDataUsageCycleController;I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->mCyclePosition:I

    return-void
.end method

.method public static final synthetic access$update(Lcom/android/settings/datausage/AppDataUsageCycleController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsageCycleController;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateAdapter(Lcom/android/settings/datausage/AppDataUsageCycleController;JJZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/datausage/AppDataUsageCycleController;->updateAdapter(JJZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;

    iget v1, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->label:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/datausage/AppDataUsageCycleController;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/datausage/AppDataUsageCycleController$update$2;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/datausage/AppDataUsageCycleController$update$2;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$update$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    const-string v2, "preference"

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onUsageDataUpdated:Lkotlin/jvm/functions/Function1;

    sget-object v0, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->AllZero:Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_5
    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz p0, :cond_e

    invoke-virtual {p0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iput-boolean v3, p0, Lcom/android/settings/datausage/SpinnerPreference;->mItemViewVisible:Z

    iget-object p0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mItemView:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    sget-boolean p0, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    const/16 v1, 0xa

    const-string v3, "cycleAdapter"

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataListCHN:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_b

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataListCHN:Ljava/util/List;

    iget-object v5, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    if-eqz p0, :cond_8

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataListCHN:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    iget-object v3, v3, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)V

    goto :goto_4

    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    if-eqz p0, :cond_d

    iget-object v3, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataList:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    iget-object v3, v3, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;->range:Landroid/util/Range;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Ljava/util/List;)V

    :cond_b
    :goto_4
    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz p0, :cond_c

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleListener:Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;

    iput-object v0, p0, Lcom/android/settings/datausage/SpinnerPreference;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p1

    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_e
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final updateAdapter(JJZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p6

    instance-of v1, v0, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;

    iget v2, v1, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->label:I

    :goto_0
    move-object v8, v1

    goto :goto_1

    :cond_0
    new-instance v1, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;Lkotlin/coroutines/Continuation;)V

    goto :goto_0

    :goto_1
    iget-object v0, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->result:Ljava/lang/Object;

    sget-object v9, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->label:I

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v10, :cond_1

    iget-boolean v1, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->Z$0:Z

    iget-wide v2, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->J$1:J

    iget-wide v4, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->J$0:J

    iget-object v6, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/android/settings/datausage/AppDataUsageCycleController;

    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v13, v4

    move-object v5, v0

    move v4, v1

    move-wide v0, v13

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object v11, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v12, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$data$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;JJLkotlin/coroutines/Continuation;)V

    iput-object v7, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v0, p1

    iput-wide v0, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->J$0:J

    move-wide/from16 v2, p3

    iput-wide v2, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->J$1:J

    move/from16 v4, p5

    iput-boolean v4, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->Z$0:Z

    iput v10, v8, Lcom/android/settings/datausage/AppDataUsageCycleController$updateAdapter$1;->label:I

    invoke-static {v11, v12, v8}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v9, :cond_3

    return-object v9

    :cond_3
    move-object v6, v7

    :goto_2
    check-cast v5, Lcom/android/settings/datausage/lib/NetworkUsageDetailsData;

    iget-object v7, v6, Lcom/android/settings/datausage/AppDataUsageCycleController;->onUsageDataUpdated:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget-object v4, v6, Lcom/android/settings/datausage/AppDataUsageCycleController;->usageDetailsDataListCHN:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, v6, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    const/4 v5, 0x0

    const-string v7, "cycleAdapter"

    if-eqz v4, :cond_6

    iput-boolean v10, v4, Lcom/android/settings/datausage/CycleAdapter;->mIsSettedDate:Z

    iput-wide v0, v4, Lcom/android/settings/datausage/CycleAdapter;->mSettedStartTime:J

    iput-wide v2, v4, Lcom/android/settings/datausage/CycleAdapter;->mSettedEndTime:J

    new-instance v8, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-object v9, v6, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    move-object p0, v8

    move-object/from16 p1, v9

    move-wide/from16 p2, v0

    move/from16 p4, v11

    move-wide/from16 p5, v2

    invoke-direct/range {p0 .. p6}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JIJ)V

    invoke-virtual {v4, v8}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, v6, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz v0, :cond_5

    iget-object v1, v6, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, v10

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->setSelection(I)V

    goto :goto_3

    :cond_4
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string v0, "preference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_6
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_7
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final dateSetByUser(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    const-string v0, "onDateSetByUser"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onDateSetByUser:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    if-nez p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    const/4 v0, 0x0

    const-string v1, "preference"

    if-eqz p1, :cond_1

    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleListener:Lcom/android/settings/datausage/AppDataUsageCycleController$cycleListener$1;

    invoke-direct {p1, v2, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;)V

    iput-object v0, p1, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz v3, :cond_2

    invoke-direct {p1, v2, v3}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public final init(Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onUsageDataUpdated"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->repository:Lcom/android/settings/datausage/lib/IAppDataUsageDetailsRepository;

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->onUsageDataUpdated:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/AppDataUsageCycleController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/datausage/AppDataUsageCycleController$onViewCreated$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/datausage/AppDataUsageCycleController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setInitialCycles(Ljava/util/List;J)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    const-string v2, "initialCycles"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->cycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->clear()V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    add-int/lit8 v14, v6, 0x1

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    move-object v8, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v2, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, p2

    if-nez v7, :cond_0

    iget-object v7, v2, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v7, v6}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    :cond_0
    move v6, v14

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsageCycleController;->preference:Lcom/android/settings/datausage/SpinnerPreference;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    iput-boolean v3, v0, Lcom/android/settings/datausage/SpinnerPreference;->mItemViewVisible:Z

    iget-object v0, v0, Lcom/android/settings/datausage/SpinnerPreference;->mItemView:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const-string v0, "preference"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string v0, "cycleAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateView(JJZ)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsageCycleController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_0

    new-instance v9, Lcom/android/settings/datausage/AppDataUsageCycleController$updateView$1;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/datausage/AppDataUsageCycleController$updateView$1;-><init>(Lcom/android/settings/datausage/AppDataUsageCycleController;JJZLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v9, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
