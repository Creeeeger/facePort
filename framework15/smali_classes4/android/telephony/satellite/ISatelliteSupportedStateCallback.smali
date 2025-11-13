.class public interface abstract Landroid/telephony/satellite/ISatelliteSupportedStateCallback;
.super Ljava/lang/Object;
.source "ISatelliteSupportedStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/ISatelliteSupportedStateCallback$Stub;,
        Landroid/telephony/satellite/ISatelliteSupportedStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.satellite.ISatelliteSupportedStateCallback"


# virtual methods
.method public abstract blacklist onSatelliteSupportedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
