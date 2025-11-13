.class final Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/content/Context;ILcom/android/settings/network/ProxySubscriptionManager;Lcom/android/settings/network/policy/NetworkPolicyRepository;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/telephony/SubscriptionInfo;",
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
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getMContext$p$s1319510310(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getProxySubscriptionManager$p(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController$subInfo$2;->this$0:Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;->access$getMSubId$p$s1319510310(Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getAccessibleSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
