.class Landroid/location/LocationManager$GnssAntennaInfoTransport;
.super Landroid/location/IGnssAntennaInfoListener$Stub;
.source "LocationManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GnssAntennaInfoTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/IGnssAntennaInfoListener$Stub;",
        "Lcom/android/internal/listeners/ListenerTransport<",
        "Landroid/location/GnssAntennaInfo$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private volatile blacklist mListener:Landroid/location/GnssAntennaInfo$Listener;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/location/GnssAntennaInfo$Listener;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 3504
    invoke-direct {p0}, Landroid/location/IGnssAntennaInfoListener$Stub;-><init>()V

    .line 3505
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "invalid null executor"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3506
    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "invalid null listener"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3507
    iput-object p1, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mExecutor:Ljava/util/concurrent/Executor;

    .line 3508
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mPackageName:Ljava/lang/String;

    .line 3509
    invoke-virtual {p2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mAttributionTag:Ljava/lang/String;

    .line 3510
    iput-object p3, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mListener:Landroid/location/GnssAntennaInfo$Listener;

    .line 3511
    return-void
.end method

.method static synthetic blacklist lambda$onGnssAntennaInfoChanged$0(Ljava/util/List;Landroid/location/GnssAntennaInfo$Listener;)V
    .locals 0
    .param p0, "antennaInfos"    # Ljava/util/List;
    .param p1, "callback"    # Landroid/location/GnssAntennaInfo$Listener;

    .line 3533
    invoke-interface {p1, p0}, Landroid/location/GnssAntennaInfo$Listener;->onGnssAntennaInfoReceived(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 1

    .line 3518
    iget-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mAttributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getListener()Landroid/location/GnssAntennaInfo$Listener;
    .locals 1

    .line 3528
    iget-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mListener:Landroid/location/GnssAntennaInfo$Listener;

    return-object v0
.end method

.method public bridge synthetic blacklist getListener()Ljava/lang/Object;
    .locals 1

    .line 3494
    invoke-virtual {p0}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->getListener()Landroid/location/GnssAntennaInfo$Listener;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    .line 3514
    iget-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist onGnssAntennaInfoChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 3533
    .local p1, "antennaInfos":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    iget-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/location/LocationManager$GnssAntennaInfoTransport$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/location/LocationManager$GnssAntennaInfoTransport$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, v0, v1}, Landroid/location/LocationManager$GnssAntennaInfoTransport;->execute(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3534
    return-void
.end method

.method public blacklist unregister()V
    .locals 1

    .line 3523
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationManager$GnssAntennaInfoTransport;->mListener:Landroid/location/GnssAntennaInfo$Listener;

    .line 3524
    return-void
.end method
