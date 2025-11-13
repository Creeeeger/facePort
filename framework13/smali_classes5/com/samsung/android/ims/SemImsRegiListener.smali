.class public interface abstract Lcom/samsung/android/ims/SemImsRegiListener;
.super Ljava/lang/Object;
.source "SemImsRegiListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/SemImsRegiListener$Stub;,
        Lcom/samsung/android/ims/SemImsRegiListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.ims.SemImsRegiListener"


# virtual methods
.method public abstract blacklist onDeregistered(Lcom/samsung/android/ims/SemImsRegistration;Lcom/samsung/android/ims/SemImsRegistrationError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
