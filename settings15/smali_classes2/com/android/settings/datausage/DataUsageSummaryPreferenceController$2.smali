.class final Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lcom/android/settings/datausage/DataPlanRepositoryImpl;",
        "it",
        "Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;",
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


# static fields
.field public static final INSTANCE:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;

    invoke-direct {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;->INSTANCE:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/settings/datausage/DataPlanRepositoryImpl;

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataPlanRepositoryImpl;-><init>(Lcom/android/settings/datausage/lib/INetworkCycleDataRepository;)V

    return-object p0
.end method
