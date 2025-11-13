.class Landroid/telephony/satellite/SatelliteManager$28;
.super Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForCommunicationAllowedStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/satellite/SatelliteManager;

.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$28;->this$0:Landroid/telephony/satellite/SatelliteManager;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteCommunicationAllowedStateChanged$0(Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;->onSatelliteCommunicationAllowedStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteCommunicationAllowedStateChanged$1(Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;Z)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteCommunicationAllowedStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$28;->val$callback:Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$28$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteCommunicationAllowedStateCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
