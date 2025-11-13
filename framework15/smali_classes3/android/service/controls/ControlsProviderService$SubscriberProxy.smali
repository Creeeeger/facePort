.class Landroid/service/controls/ControlsProviderService$SubscriberProxy;
.super Ljava/lang/Object;
.source "ControlsProviderService.java"

# interfaces
.implements Ljava/util/concurrent/Flow$Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SubscriberProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Flow$Subscriber<",
        "Landroid/service/controls/Control;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCs:Landroid/service/controls/IControlsSubscriber;

.field private blacklist mEnforceStateless:Z

.field private blacklist mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

.field private blacklist mToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;-><init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V

    iput-object p1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor blacklist <init>(ZLandroid/os/IBinder;Landroid/service/controls/IControlsSubscriber;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mEnforceStateless:Z

    iput-object p2, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    return-void
.end method

.method private blacklist handleRemoteException(Landroid/os/RemoteException;)V
    .locals 1

    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;->cancel()V

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist test-api onComplete()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/service/controls/IControlsSubscriber;->onComplete(Landroid/os/IBinder;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public whitelist test-api onError(Ljava/lang/Throwable;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/service/controls/IControlsSubscriber;->onError(Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public blacklist onNext(Landroid/service/controls/Control;)V
    .locals 2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-boolean v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mEnforceStateless:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/service/controls/ControlsProviderService;->-$$Nest$smisStatelessControl(Landroid/service/controls/Control;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ControlsProviderService"

    const-string/jumbo v1, "onNext(): control is not stateless. Use the Control.StatelessBuilder() to build the control."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/controls/Control$StatelessBuilder;

    invoke-direct {v0, p1}, Landroid/service/controls/Control$StatelessBuilder;-><init>(Landroid/service/controls/Control;)V

    invoke-virtual {v0}, Landroid/service/controls/Control$StatelessBuilder;->build()Landroid/service/controls/Control;

    move-result-object v0

    move-object p1, v0

    :cond_0
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v0

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/service/controls/templates/ControlTemplate;->prepareTemplateForBinder(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1, p1}, Landroid/service/controls/IControlsSubscriber;->onNext(Landroid/os/IBinder;Landroid/service/controls/Control;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic whitelist test-api onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/service/controls/Control;

    invoke-virtual {p0, p1}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->onNext(Landroid/service/controls/Control;)V

    return-void
.end method

.method public whitelist test-api onSubscribe(Ljava/util/concurrent/Flow$Subscription;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;

    invoke-direct {v0, p1}, Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;-><init>(Ljava/util/concurrent/Flow$Subscription;)V

    iget-object v1, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mCs:Landroid/service/controls/IControlsSubscriber;

    iget-object v2, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, v0}, Landroid/service/controls/IControlsSubscriber;->onSubscribe(Landroid/os/IBinder;Landroid/service/controls/IControlsSubscription;)V

    iput-object v0, p0, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->mSubscription:Landroid/service/controls/ControlsProviderService$SubscriptionAdapter;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Landroid/service/controls/ControlsProviderService$SubscriberProxy;->handleRemoteException(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method
