.class Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;
.super Landroid/app/IScreenCaptureObserver$Stub;
.source "ScreenCaptureCallbackHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ScreenCaptureCallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenCaptureObserver"
.end annotation


# instance fields
.field blacklist mRegistrations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Landroid/app/Activity$ScreenCaptureCallback;",
            "Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/IScreenCaptureObserver$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->mRegistrations:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic blacklist lambda$onScreenCaptured$0(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V
    .locals 1

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mCallback:Landroid/app/Activity$ScreenCaptureCallback;

    invoke-interface {v0}, Landroid/app/Activity$ScreenCaptureCallback;->onScreenCaptured()V

    return-void
.end method


# virtual methods
.method public blacklist onScreenCaptured()V
    .locals 4

    iget-object v0, p0, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver;->mRegistrations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;

    iget-object v2, v1, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureObserver$$ExternalSyntheticLambda0;-><init>(Landroid/app/ScreenCaptureCallbackHandler$ScreenCaptureRegistration;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method
