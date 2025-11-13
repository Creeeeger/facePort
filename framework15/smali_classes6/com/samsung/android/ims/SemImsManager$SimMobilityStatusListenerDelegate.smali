.class Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;
.super Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimMobilityStatusListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ims/SemSimMobilityStatusListener;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mToken:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemSimMobilityStatusListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/ims/SemSimMobStatusListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mToken:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/SemSimMobilityStatusListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onSimMobilityStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$SimMobilityStatusListenerDelegate;->getListener()Lcom/samsung/android/ims/SemSimMobilityStatusListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemSimMobilityStatusListener;->onSimMobilityStateChanged(Z)V

    :cond_0
    return-void
.end method
