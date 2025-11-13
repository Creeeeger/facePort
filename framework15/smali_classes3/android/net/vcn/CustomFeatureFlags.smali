.class public Landroid/net/vcn/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/net/vcn/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/vcn/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/vcn/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v8, "android.net.vcn.validate_network_on_ipsec_loss"

    const-string v9, ""

    const-string v1, "android.net.vcn.allow_disable_ipsec_loss_detector"

    const-string v2, "android.net.vcn.enforce_main_user"

    const-string v3, "android.net.vcn.evaluate_ipsec_loss_on_lp_nc_change"

    const-string v4, "android.net.vcn.handle_seq_num_leap"

    const-string v5, "android.net.vcn.network_metric_monitor"

    const-string v6, "android.net.vcn.safe_mode_config"

    const-string v7, "android.net.vcn.safe_mode_timeout_config"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/net/vcn/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist allowDisableIpsecLossDetector()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.net.vcn.allow_disable_ipsec_loss_detector"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist enforceMainUser()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.net.vcn.enforce_main_user"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist evaluateIpsecLossOnLpNcChange()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.net.vcn.evaluate_ipsec_loss_on_lp_nc_change"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v6, "android.net.vcn.safe_mode_timeout_config"

    const-string v7, "android.net.vcn.validate_network_on_ipsec_loss"

    const-string v0, "android.net.vcn.allow_disable_ipsec_loss_detector"

    const-string v1, "android.net.vcn.enforce_main_user"

    const-string v2, "android.net.vcn.evaluate_ipsec_loss_on_lp_nc_change"

    const-string v3, "android.net.vcn.handle_seq_num_leap"

    const-string v4, "android.net.vcn.network_metric_monitor"

    const-string v5, "android.net.vcn.safe_mode_config"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/net/vcn/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/vcn/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist handleSeqNumLeap()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.net.vcn.handle_seq_num_leap"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/net/vcn/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/vcn/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist networkMetricMonitor()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.net.vcn.network_metric_monitor"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist safeModeConfig()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.net.vcn.safe_mode_config"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist safeModeTimeoutConfig()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.net.vcn.safe_mode_timeout_config"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist validateNetworkOnIpsecLoss()Z
    .locals 2

    new-instance v0, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/vcn/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.net.vcn.validate_network_on_ipsec_loss"

    invoke-virtual {p0, v1, v0}, Landroid/net/vcn/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
