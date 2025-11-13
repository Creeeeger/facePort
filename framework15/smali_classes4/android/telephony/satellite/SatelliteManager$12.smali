.class Landroid/telephony/satellite/SatelliteManager$12;
.super Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;
.source "SatelliteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/satellite/SatelliteManager;->registerForProvisionStateChanged(Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/telephony/satellite/SatelliteManager;

.field final synthetic blacklist val$callback:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/satellite/SatelliteManager;Ljava/util/concurrent/Executor;Landroid/telephony/satellite/SatelliteProvisionStateCallback;)V
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

    iput-object p1, p0, Landroid/telephony/satellite/SatelliteManager$12;->this$0:Landroid/telephony/satellite/SatelliteManager;

    iput-object p2, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$callback:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

    invoke-direct {p0}, Landroid/telephony/satellite/ISatelliteProvisionStateCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteProvisionStateChanged$0(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteProvisionStateCallback;->onSatelliteProvisionStateChanged(Z)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteProvisionStateChanged$1(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Z)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Z)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteSubscriptionProvisionStateChanged$2(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/telephony/satellite/SatelliteProvisionStateCallback;->onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSatelliteSubscriptionProvisionStateChanged$3(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda1;-><init>(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onSatelliteProvisionStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$callback:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Z)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onSatelliteSubscriptionProvisionStateChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/satellite/SatelliteSubscriberProvisionStatus;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/telephony/satellite/SatelliteManager$12;->val$callback:Landroid/telephony/satellite/SatelliteProvisionStateCallback;

    new-instance v2, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/telephony/satellite/SatelliteManager$12$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/satellite/SatelliteProvisionStateCallback;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
