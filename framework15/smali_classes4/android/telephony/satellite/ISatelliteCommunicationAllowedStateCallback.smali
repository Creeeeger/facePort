.class public interface abstract Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback;
.super Ljava/lang/Object;
.source "ISatelliteCommunicationAllowedStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteCommunicationAllowedStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteCommunicationAllowedStateCallback"


# virtual methods
.method public abstract blacklist onSatelliteCommunicationAllowedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
