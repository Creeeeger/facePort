.class public final Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptiveScreenOffTimeoutConfig"
.end annotation


# instance fields
.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mScreenOffTimeout:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mPackageName:Ljava/lang/String;

    iput-wide p2, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mScreenOffTimeout:J

    return-void
.end method

.method public static blacklist fromParcelable(Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;)Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    iget-object v1, p0, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;->packageName:Ljava/lang/String;

    iget-wide v2, p0, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;->screenOffTimeout:J

    invoke-direct {v0, v1, v2, v3}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method

.method public static blacklist fromParcelable(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;

    invoke-static {v2}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->fromParcelable(Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;)Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static blacklist toParcelable(Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;)Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;

    invoke-direct {v0}, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;-><init>()V

    iget-object v1, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;->packageName:Ljava/lang/String;

    iget-wide v1, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mScreenOffTimeout:J

    iput-wide v1, v0, Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;->screenOffTimeout:J

    return-object v0
.end method

.method public static blacklist toParcelable(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;

    invoke-static {v2}, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->toParcelable(Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;)Landroid/os/IPowerManager$AdaptiveScreenOffTimeoutConfig;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getScreenOffTimeout()J
    .locals 2

    iget-wide v0, p0, Landroid/os/PowerManager$AdaptiveScreenOffTimeoutConfig;->mScreenOffTimeout:J

    return-wide v0
.end method
