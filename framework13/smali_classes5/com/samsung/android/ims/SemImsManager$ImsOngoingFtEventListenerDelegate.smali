.class Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;
.super Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsOngoingFtEventListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mToken:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    .line 1573
    invoke-direct {p0}, Lcom/samsung/android/ims/ft/SemImsFtListener$Stub;-><init>()V

    .line 1572
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mToken:Ljava/lang/String;

    .line 1574
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    .line 1575
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 1579
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    return-object v0

    .line 1581
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onFtStateChanged(Z)V
    .locals 1
    .param p1, "event"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$ImsOngoingFtEventListenerDelegate;->getListener()Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;

    move-result-object v0

    .line 1587
    .local v0, "imsOngoingFtEventListener":Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;
    if-eqz v0, :cond_0

    .line 1588
    invoke-interface {v0, p1}, Lcom/samsung/android/ims/ft/SemImsOngoingFtEventListener;->onFtStateChanged(Z)V

    .line 1590
    :cond_0
    return-void
.end method
