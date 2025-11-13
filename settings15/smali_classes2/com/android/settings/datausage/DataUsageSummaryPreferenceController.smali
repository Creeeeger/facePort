.class public Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\r\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u0000 ?2\u00020\u0001:\u0001?BY\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0014\u0008\u0002\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u0012\u0014\u0008\u0002\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000e0\n\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0018\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0082@\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0015\u0010\u001c\u001a\u0004\u0018\u00010\u001b*\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0015\u0010\u001e\u001a\u0004\u0018\u00010\u001b*\u00020\u0012H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020!H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u00142\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010)R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010*R \u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010+R \u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000e0\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010+R\u0016\u0010,\u001a\u00020\u000b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001d\u00103\u001a\u0004\u0018\u00010.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\u001b\u00107\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00100\u001a\u0004\u00085\u00106R\u001b\u0010;\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00088\u00100\u001a\u0004\u00089\u0010:R\u0016\u0010=\u001a\u00020<8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008=\u0010>\u00a8\u0006@"
    }
    d2 = {
        "Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;",
        "Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;",
        "Landroid/content/Context;",
        "context",
        "",
        "subId",
        "Lcom/android/settings/network/ProxySubscriptionManager;",
        "proxySubscriptionManager",
        "Lcom/android/settings/network/policy/NetworkPolicyRepository;",
        "networkPolicyRepository",
        "Lkotlin/Function1;",
        "Landroid/net/NetworkTemplate;",
        "Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;",
        "networkCycleDataRepositoryFactory",
        "Lcom/android/settings/datausage/DataPlanRepositoryImpl;",
        "dataPlanRepositoryFactory",
        "<init>",
        "(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "Landroid/net/NetworkPolicy;",
        "policy",
        "",
        "update",
        "(Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "dataBarSize",
        "setDataBarSize",
        "(J)V",
        "",
        "getLimitInfo",
        "(Landroid/net/NetworkPolicy;)Ljava/lang/CharSequence;",
        "getWarningInfo",
        "getAvailabilityStatus",
        "(I)I",
        "Landroidx/preference/PreferenceScreen;",
        "screen",
        "displayPreference",
        "(Landroidx/preference/PreferenceScreen;)V",
        "Landroidx/lifecycle/LifecycleOwner;",
        "viewLifecycleOwner",
        "onViewCreated",
        "(Landroidx/lifecycle/LifecycleOwner;)V",
        "Lcom/android/settings/network/ProxySubscriptionManager;",
        "Lcom/android/settings/network/policy/NetworkPolicyRepository;",
        "Lkotlin/jvm/functions/Function1;",
        "defaultNetworkTemplate",
        "Landroid/net/NetworkTemplate;",
        "Landroid/telephony/SubscriptionInfo;",
        "subInfo$delegate",
        "Lkotlin/Lazy;",
        "getSubInfo",
        "()Landroid/telephony/SubscriptionInfo;",
        "subInfo",
        "networkTemplate$delegate",
        "getNetworkTemplate",
        "()Landroid/net/NetworkTemplate;",
        "networkTemplate",
        "networkCycleDataRepository$delegate",
        "getNetworkCycleDataRepository",
        "()Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;",
        "networkCycleDataRepository",
        "Lcom/android/settings/datausage/DataUsageSummaryPreference;",
        "preference",
        "Lcom/android/settings/datausage/DataUsageSummaryPreference;",
        "Companion",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8

.field public static final Companion:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$Companion;

.field private static final KEY:Ljava/lang/String; = "status_header"

.field private static final TAG:Ljava/lang/String; = "DataUsageSummaryPC"


# instance fields
.field private final dataPlanRepositoryFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private defaultNetworkTemplate:Landroid/net/NetworkTemplate;

.field private final networkCycleDataRepository$delegate:Lkotlin/Lazy;

.field private final networkCycleDataRepositoryFactory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field private final networkPolicyRepository:Lcom/android/settings/network/policy/NetworkPolicyRepository;

.field private final networkTemplate$delegate:Lkotlin/Lazy;

.field private preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

.field private final proxySubscriptionManager:Lcom/android/settings/network/ProxySubscriptionManager;

.field private final subInfo$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$Companion;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->Companion:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x3c

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySubscriptionManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x38

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySubscriptionManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkPolicyRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x30

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/settings/network/ProxySubscriptionManager;",
            "Lcom/android/settings/network/policy/NetworkPolicyRepository;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySubscriptionManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkPolicyRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCycleDataRepositoryFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/android/settings/network/ProxySubscriptionManager;",
            "Lcom/android/settings/network/policy/NetworkPolicyRepository;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxySubscriptionManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkPolicyRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCycleDataRepositoryFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataPlanRepositoryFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status_header"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->proxySubscriptionManager:Lcom/android/settings/network/ProxySubscriptionManager;

    iput-object p4, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkPolicyRepository:Lcom/android/settings/network/policy/NetworkPolicyRepository;

    iput-object p5, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkCycleDataRepositoryFactory:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->dataPlanRepositoryFactory:Lkotlin/jvm/functions/Function1;

    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "subid : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DataUsageSummaryPC"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->subInfo$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$networkTemplate$2;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$networkTemplate$2;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkTemplate$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$networkCycleDataRepository$2;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$networkCycleDataRepository$2;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkCycleDataRepository$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    invoke-static {p1}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p3

    const-string p8, "getInstance(...)"

    invoke-static {p3, p8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    new-instance p4, Lcom/android/settings/network/policy/NetworkPolicyRepository;

    invoke-direct {p4, p1}, Lcom/android/settings/network/policy/NetworkPolicyRepository;-><init>(Landroid/content/Context;)V

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    new-instance p5, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$1;

    invoke-direct {p5, p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$1;-><init>(Landroid/content/Context;)V

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    sget-object p6, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;->INSTANCE:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;

    :cond_3
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getDataPlanRepositoryFactory$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->dataPlanRepositoryFactory:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getMContext$p$s1319510310(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMSubId$p$s1319510310(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)I
    .locals 0

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    return p0
.end method

.method public static final synthetic access$getNetworkCycleDataRepository(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getNetworkCycleDataRepository()Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getNetworkCycleDataRepositoryFactory$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkCycleDataRepositoryFactory:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getNetworkTemplate(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Landroid/net/NetworkTemplate;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreference$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/datausage/DataUsageSummaryPreference;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    return-object p0
.end method

.method public static final synthetic access$getProxySubscriptionManager$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/network/ProxySubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->proxySubscriptionManager:Lcom/android/settings/network/ProxySubscriptionManager;

    return-object p0
.end method

.method public static final synthetic access$getSubInfo(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$update(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->update(Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getLimitInfo(Landroid/net/NetworkPolicy;)Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140906

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-static {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final getNetworkCycleDataRepository()Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkCycleDataRepository$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    return-object p0
.end method

.method private final getNetworkTemplate()Landroid/net/NetworkTemplate;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkTemplate$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method private final getSubInfo()Landroid/telephony/SubscriptionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->subInfo$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method private final getWarningInfo(Landroid/net/NetworkPolicy;)Ljava/lang/CharSequence;
    .locals 4

    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f140909

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v1, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private final setDataBarSize(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mStartLabel:Ljava/lang/CharSequence;

    iput-object p0, v0, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mEndLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void

    :cond_0
    const-string p0, "preference"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final update(Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkPolicy;",
            "Lkotlin/coroutines/Continuation;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;

    iget v4, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;

    invoke-direct {v3, v0, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->result:Ljava/lang/Object;

    sget-object v4, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v5, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->label:I

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "defaultNetworkTemplate"

    const-string v10, "DataUsageSummaryPC"

    const/4 v11, 0x1

    const-string v12, "preference"

    if-eqz v5, :cond_2

    if-ne v5, v11, :cond_1

    iget-object v0, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object v1, v2

    move-object/from16 p2, v9

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v13, "subInfo : "

    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", policy : "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_a

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v1, Landroid/net/NetworkTemplate$Builder;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/net/NetworkTemplate$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/net/NetworkTemplate$Builder;->build()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-string v2, "build(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->defaultNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->defaultNetworkTemplate:Landroid/net/NetworkTemplate;

    if-eqz v2, :cond_9

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_8

    iput-boolean v11, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mWifiMode:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_6

    iget-wide v3, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    iput-wide v3, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_5

    iget-boolean v3, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eqz v3, :cond_3

    iput-boolean v8, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_3
    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    iget-wide v1, v1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v4, v3}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v6

    :cond_4
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_5
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_6
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_7
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_a
    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_22

    invoke-direct/range {p0 .. p1}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getLimitInfo(Landroid/net/NetworkPolicy;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-wide v13, v1, Landroid/net/NetworkPolicy;->limitBytes:J

    move-object/from16 p2, v9

    iget-wide v8, v1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-wide/16 v13, -0x1

    cmp-long v5, v8, v13

    if-lez v5, :cond_b

    invoke-direct {v0, v8, v9}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->setDataBarSize(J)V

    :cond_b
    sget-object v5, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    new-instance v8, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;

    invoke-direct {v8, v0, v1, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$dataPlanInfo$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Landroid/net/NetworkPolicy;Lkotlin/coroutines/Continuation;)V

    iput-object v0, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->L$0:Ljava/lang/Object;

    iput v11, v3, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$update$1;->label:I

    invoke-static {v5, v8, v3}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_c

    return-object v4

    :cond_c
    :goto_1
    check-cast v1, Lcom/android/settings/datausage/DataPlanInfo;

    iget-object v3, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v3

    const-string v4, "getDefaultTemplate(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->defaultNetworkTemplate:Landroid/net/NetworkTemplate;

    new-instance v3, Lcom/android/settingslib/net/DataUsageController;

    iget-object v4, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->defaultNetworkTemplate:Landroid/net/NetworkTemplate;

    if-eqz v4, :cond_21

    invoke-virtual {v3, v4}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    const-wide/16 v8, 0x0

    cmp-long v13, v4, v8

    const v14, 0x7f140909

    const v15, 0x7f140906

    move-object/from16 v16, v12

    if-lez v13, :cond_f

    iget-wide v11, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v11, v11, v8

    if-lez v11, :cond_f

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v11, :cond_e

    iget-object v12, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v12, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_d

    iget-object v5, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v11, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v5, v11, v12}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v14, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_e
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_f
    iget-wide v11, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    cmp-long v11, v11, v8

    if-lez v11, :cond_12

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_11

    invoke-virtual {v4, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_10

    iget-object v5, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v11, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-static {v5, v11, v12}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v14, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_10
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_11
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_12
    if-lez v13, :cond_15

    iget-object v11, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v11, :cond_14

    iget-object v12, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v12, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v12, v15, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_13

    invoke-virtual {v4, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_13
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_14
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_15
    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_20

    invoke-virtual {v4, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setLimitInfo(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v7}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setWarningInfo(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dataPlanInfo: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v4, :cond_1e

    iget-wide v10, v1, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    iput-wide v10, v4, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mDataplanUse:J

    invoke-virtual {v4}, Landroidx/preference/Preference;->notifyChanged()V

    iget-wide v4, v1, Lcom/android/settings/datausage/DataPlanInfo;->dataBarSize:J

    cmp-long v8, v4, v8

    if-lez v8, :cond_19

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_18

    iget-boolean v8, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    const/4 v9, 0x1

    if-eq v8, v9, :cond_16

    iput-boolean v9, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_16
    invoke-direct {v0, v4, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->setDataBarSize(J)V

    iget-object v2, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v2, :cond_17

    iget-wide v8, v1, Lcom/android/settings/datausage/DataPlanInfo;->dataPlanUse:J

    long-to-float v1, v8

    long-to-float v4, v4

    div-float/2addr v1, v4

    iput v1, v2, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mProgress:F

    invoke-virtual {v2}, Landroidx/preference/Preference;->notifyChanged()V

    goto :goto_3

    :cond_17
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_18
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_19
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v1, :cond_1d

    iget-boolean v4, v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    if-eqz v4, :cond_1a

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/settings/datausage/DataUsageSummaryPreference;->mChartEnabled:Z

    invoke-virtual {v1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1a
    :goto_3
    iget-object v1, v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    if-eqz v1, :cond_1c

    iget-wide v4, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleStart:J

    new-instance v2, Ljava/lang/Long;

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    iget-wide v3, v3, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->cycleEnd:J

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    :cond_1b
    invoke-virtual {v1, v2, v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->setUsageInfo(Ljava/lang/Long;Ljava/lang/Long;)V

    return-object v6

    :cond_1c
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1d
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1e
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_1f
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_20
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_21
    invoke-static/range {p2 .. p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7

    :cond_22
    move-object/from16 v16, v12

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7
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

    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->preference:Lcom/android/settings/datausage/DataUsageSummaryPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getSubInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->isControllable()Z

    move-result p0

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

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onViewCreated(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 3

    const-string v0, "viewLifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->networkPolicyRepository:Lcom/android/settings/network/policy/NetworkPolicyRepository;

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/network/policy/NetworkPolicyRepository;->networkPolicyFlow(Landroid/net/NetworkTemplate;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$onViewCreated$1;-><init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/spa/framework/util/FlowsKt;->collectLatestWithLifecycle$default(Lkotlinx/coroutines/flow/Flow;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
