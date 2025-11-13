.class public Landroid/flags/FeatureFlagsFake;
.super Landroid/flags/FeatureFlags;
.source "FeatureFlagsFake.java"


# instance fields
.field private final blacklist mFlagValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/flags/BooleanFlagBase;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mReadFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/BooleanFlagBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Landroid/flags/IFeatureFlags;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    return-void
.end method

.method private blacklist requireFlag(Landroid/flags/BooleanFlagBase;)Z
    .locals 3

    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in test but no overrided specified. You must call #setFlagValue for each flag read in a test."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist isCurrentlyEnabled(Landroid/flags/DynamicBooleanFlag;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled(Landroid/flags/BooleanFlag;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOffFlag;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result v0

    return v0
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOnFlag;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlagsFake;->requireFlag(Landroid/flags/BooleanFlagBase;)Z

    move-result v0

    return v0
.end method

.method public blacklist setFlagValue(Landroid/flags/BooleanFlagBase;Z)V
    .locals 3

    instance-of v0, p1, Landroid/flags/DynamicBooleanFlag;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mReadFlags:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You can not set the value of a flag after it has been read. Tried to set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/flags/FeatureFlagsFake;->mFlagValues:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, Landroid/flags/DynamicBooleanFlag;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/flags/DynamicFlag;

    invoke-virtual {p0, v0}, Landroid/flags/FeatureFlagsFake;->onFlagChange(Landroid/flags/DynamicFlag;)V

    :cond_2
    return-void
.end method

.method protected blacklist syncInternal(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;)V"
        }
    .end annotation

    return-void
.end method
