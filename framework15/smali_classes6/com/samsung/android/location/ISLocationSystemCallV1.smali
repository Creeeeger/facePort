.class public interface abstract Lcom/samsung/android/location/ISLocationSystemCallV1;
.super Ljava/lang/Object;
.source "ISLocationSystemCallV1.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationSystemCallV1$Stub;,
        Lcom/samsung/android/location/ISLocationSystemCallV1$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.location.ISLocationSystemCallV1"


# virtual methods
.method public abstract blacklist isProviderEnabledForUser(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isUidForeground(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
