.class public final Landroid/os/PowerManager$LowPowerStandbyPolicy;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LowPowerStandbyPolicy"
.end annotation


# instance fields
.field private final blacklist mAllowedFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedReasons:I

.field private final blacklist mExemptPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    iput p3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    return-void
.end method

.method public static blacklist fromParcelable(Landroid/os/IPowerManager$LowPowerStandbyPolicy;)Landroid/os/PowerManager$LowPowerStandbyPolicy;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget-object v1, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    new-instance v2, Landroid/util/ArraySet;

    iget-object v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget v3, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    new-instance v4, Landroid/util/ArraySet;

    iget-object v5, p0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/PowerManager$LowPowerStandbyPolicy;-><init>(Ljava/lang/String;Ljava/util/Set;ILjava/util/Set;)V

    return-object v0
.end method

.method public static blacklist toParcelable(Landroid/os/PowerManager$LowPowerStandbyPolicy;)Landroid/os/IPowerManager$LowPowerStandbyPolicy;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;

    invoke-direct {v0}, Landroid/os/IPowerManager$LowPowerStandbyPolicy;-><init>()V

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->identifier:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->exemptPackages:Ljava/util/List;

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    iput v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedReasons:I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/os/IPowerManager$LowPowerStandbyPolicy;->allowedFeatures:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    iget v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    iget v4, v1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iget-object v4, v1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    iget-object v4, v1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    iget-object v4, v1, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public whitelist getAllowedFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getAllowedReasons()I
    .locals 1

    iget v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    return v0
.end method

.method public whitelist getExemptPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    iget v2, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy{mIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExemptPackages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mExemptPackages:Ljava/util/Set;

    const-string v2, ","

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowedReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedReasons:I

    invoke-static {v1}, Landroid/os/PowerManager;->lowPowerStandbyAllowedReasonsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAllowedFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPolicy;->mAllowedFeatures:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
