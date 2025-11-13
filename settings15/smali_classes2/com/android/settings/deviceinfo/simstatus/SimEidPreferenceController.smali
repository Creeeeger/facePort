.class public final Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0005H\u0002J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u000c\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u000e\u0010\u001f\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0002\u0010 J\u0016\u0010\"\u001a\u00020\u00112\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\u00050$H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006&"
    }
    d2 = {
        "Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;",
        "Lcom/android/settings/core/BasePreferenceController;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "eid",
        "eidStatus",
        "Lcom/android/settings/deviceinfo/simstatus/EidStatus;",
        "preference",
        "Lcom/android/settingslib/CustomDialogPreferenceCompat;",
        "slotSimStatus",
        "Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "",
        "getIsAvailableAndUpdateEid",
        "",
        "getTitle",
        "handlePreferenceTreeClick",
        "Landroidx/preference/Preference;",
        "init",
        "onViewCreated",
        "viewLifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "update",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateDialog",
        "updateNonIndexableKeys",
        "keys",
        "",
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

.field public static final Companion:Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion;

.field private static final QR_CODE_SIZE:I = 0x258

.field private static final TAG:Ljava/lang/String; = "SimEidPreferenceController"


# instance fields
.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private eid:Ljava/lang/String;

.field private eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

.field private preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

.field private slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->Companion:Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferenceKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getCoroutineScope$p(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getIsAvailableAndUpdateEid(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->getIsAvailableAndUpdateEid()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTitle(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateDialog(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->updateDialog(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getIsAvailableAndUpdateEid()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "mContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/spaprivileged/framework/common/ContextsKt;->getUserManager(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mBlocker:Ljava/util/concurrent/Phaser;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/Phaser;->awaitAdvance(I)I

    iget-object v0, v0, Lcom/android/settings/deviceinfo/simstatus/EidStatus;->mEid:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eid:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_1
    return v1
.end method

.method private final getTitle()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f142d2d

    const-string v3, "getString(...)"

    const/4 v4, 0x1

    if-gt v0, v4, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f140db0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final update(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;

    iget v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "preference"

    if-eqz v2, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$isAvailable$1;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$isAvailable$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v2, :cond_c

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz p1, :cond_b

    sget-object p1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v2, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$title$1;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$title$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v2, :cond_a

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz v2, :cond_9

    iput-object p1, v2, Landroidx/preference/DialogPreference;->mDialogTitle:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eid:Ljava/lang/String;

    if-eqz p1, :cond_8

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iput-object v4, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$update$1;->label:I

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->updateDialog(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    const-string p0, "eid"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_a
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_b
    return-object v3

    :cond_c
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method private final updateDialog(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;

    iget v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->label:I

    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->L$0:Ljava/lang/Object;

    check-cast p0, Landroid/widget/ImageView;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    const/4 v2, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_4

    const/16 v6, 0x2000

    invoke-virtual {v5, v6, v6}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    const v5, 0x7f0a05e1

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "requireViewById(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eid:Ljava/lang/String;

    const-string v8, "eid"

    if-eqz v7, :cond_7

    invoke-static {v7}, Lcom/android/settings/deviceinfo/PhoneNumberUtil;->expandByTts(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v5, 0x7f0a05e0

    invoke-virtual {p1, v5}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    sget-object v5, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->Companion:Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion;

    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eid:Ljava/lang/String;

    if-eqz p0, :cond_6

    iput-object p1, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$updateDialog$1;->label:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v5, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion$getEidQrCode$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$Companion$getEidQrCode$2;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    invoke-static {v4, v5, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_6
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_7
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
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

    check-cast p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string v0, "preference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->preference:Lcom/android/settingslib/CustomDialogPreferenceCompat;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$handlePreferenceTreeClick$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$handlePreferenceTreeClick$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;)V

    iput-object v0, p1, Lcom/android/settingslib/CustomDialogPreferenceCompat;->mOnShowListener:Landroid/content/DialogInterface$OnShowListener;

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
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

.method public final init(Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;Lcom/android/settings/deviceinfo/simstatus/EidStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->slotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->eidStatus:Lcom/android/settings/deviceinfo/simstatus/EidStatus;

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

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController$onViewCreated$1;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;Lkotlin/coroutines/Continuation;)V

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

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "keys"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimEidPreferenceController;->getIsAvailableAndUpdateEid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
