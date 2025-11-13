.class public Lcom/android/settings/datausage/AppDataUsageAppSettingsController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 $2\u00020\u0001:\u0001$B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u0011H\u0016J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u001c\u0010\u001e\u001a\u00020\u00192\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000b2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010\u001f\u001a\u00020\u00192\u0006\u0010 \u001a\u00020!H\u0016J\u000e\u0010\"\u001a\u00020\u0019H\u0082@\u00a2\u0006\u0002\u0010#R\u0016\u0010\u0007\u001a\n \t*\u0004\u0018\u00010\u00080\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017\u00a8\u0006%"
    }
    d2 = {
        "Lcom/android/settings/datausage/AppDataUsageAppSettingsController;",
        "Lcom/android/settings/core/BasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "kotlin.jvm.PlatformType",
        "packageNames",
        "",
        "preference",
        "Landroidx/preference/Preference;",
        "resolvedIntent",
        "Landroid/content/Intent;",
        "userId",
        "",
        "visiable",
        "",
        "getVisiable",
        "()Z",
        "setVisiable",
        "(Z)V",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "handlePreferenceTreeClick",
        "init",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "update",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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

.field private static final Companion:Lcom/android/settings/datausage/AppDataUsageAppSettingsController$Companion;

.field private static final SettingsIntent:Landroid/content/Intent;

.field private static final TAG:Ljava/lang/String; = "AppDataUsageAppSettingsController"


# instance fields
.field private final packageManager:Landroid/content/pm/PackageManager;

.field private packageNames:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preference:Landroidx/preference/Preference;

.field private resolvedIntent:Landroid/content/Intent;

.field private userId:I

.field private visiable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->Companion:Lcom/android/settings/datausage/AppDataUsageAppSettingsController$Companion;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sput-object v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->SettingsIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->packageNames:Ljava/lang/Iterable;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->userId:I

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static final synthetic access$getCompanion$p()Lcom/android/settings/datausage/AppDataUsageAppSettingsController$Companion;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->Companion:Lcom/android/settings/datausage/AppDataUsageAppSettingsController$Companion;

    return-object v0
.end method

.method public static final synthetic access$getPackageManager$p(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;)Landroid/content/pm/PackageManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->packageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static final synthetic access$getPackageNames$p(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;)Ljava/lang/Iterable;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->packageNames:Ljava/lang/Iterable;

    return-object p0
.end method

.method public static final synthetic access$getSettingsIntent$cp()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->SettingsIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getUserId$p(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->userId:I

    return p0
.end method

.method public static final synthetic access$update(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;

    iget v1, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;-><init>(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->L$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;

    iget-object v0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;

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

    new-instance v2, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$2;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$2;-><init>(Lcom/android/settings/datausage/AppDataUsageAppSettingsController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$update$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->resolvedIntent:Landroid/content/Intent;

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->preference:Landroidx/preference/Preference;

    if-eqz p0, :cond_6

    iget-object p1, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->resolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_2

    :cond_4
    move p1, v1

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object p0, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->resolvedIntent:Landroid/content/Intent;

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v4, v1

    :goto_3
    iput-boolean v4, v0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->visiable:Z

    sget-object p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "visiable : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_6
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->preference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->resolvedIntent:Landroid/content/Intent;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->TAG:Ljava/lang/String;

    const-string v0, "resolvedIntent is null"

    invoke-static {p0, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    :cond_0
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

.method public final getVisiable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->visiable:Z

    return p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->resolvedIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
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

.method public final init(Ljava/lang/Iterable;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "packageNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->packageNames:Ljava/lang/Iterable;

    iput p2, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->userId:I

    sget-object p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "package Name : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    new-instance v1, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/datausage/AppDataUsageAppSettingsController$onViewCreated$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/datausage/AppDataUsageAppSettingsController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setVisiable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/AppDataUsageAppSettingsController;->visiable:Z

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
