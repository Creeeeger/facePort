.class Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;
.super Lcom/samsung/android/ims/SemImsRegiListener$Stub;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsRegistrationListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/ims/SemImsRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mToken:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/ims/SemImsRegistrationListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsRegiListener$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mToken:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/ims/SemImsRegistrationListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V

    :cond_0
    return-void
.end method

.method public blacklist onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/ims/SemImsManager$ImsRegistrationListenerDelegate;->getListener()Lcom/samsung/android/ims/SemImsRegistrationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/ims/SemImsRegistrationListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V

    :cond_0
    return-void
.end method
