.class public Lcom/samsung/android/ims/SemImsRegiListener$Default;
.super Ljava/lang/Object;
.source "SemImsRegiListener.java"

# interfaces
.implements Lcom/samsung/android/ims/SemImsRegiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegiListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .locals 0
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .param p2, "registrationError"    # Lcom/samsung/android/ims/SemImsRegistrationError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public blacklist onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .locals 0
    .param p1, "reg"    # Lcom/samsung/android/ims/SemImsRegistration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
