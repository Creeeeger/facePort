.class final Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/runtime/MutableState;",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $onboardingService:Lcom/android/settings/network/SimOnboardingService;

.field final synthetic $subInfo:Landroid/telephony/SubscriptionInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/SimOnboardingService;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iput-object p2, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;->$onboardingService:Lcom/android/settings/network/SimOnboardingService;

    iget-object v1, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SimOnboardingService"

    const-string v2, "userSelectedSubInfoList is empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->activeSubInfoList:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/settings/network/SimOnboardingService;->userSelectedSubInfoList:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/spa/network/SimOnboardingSelectSimKt$SelectSimBody$checked$1;->$subInfo:Landroid/telephony/SubscriptionInfo;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sget-object v0, Landroidx/compose/runtime/StructuralEqualityPolicy;->INSTANCE:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-static {p0, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p0

    return-object p0
.end method
