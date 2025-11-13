.class public interface abstract Lcom/samsung/android/net/IExtendedEthernetManager;
.super Ljava/lang/Object;
.source "IExtendedEthernetManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/IExtendedEthernetManager$Stub;,
        Lcom/samsung/android/net/IExtendedEthernetManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.net.IExtendedEthernetManager"


# virtual methods
.method public abstract blacklist getConfiguration(Ljava/lang/String;)Landroid/net/IpConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
