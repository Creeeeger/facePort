.class public interface abstract Lcom/samsung/android/provider/IDynamicFeatureManager;
.super Ljava/lang/Object;
.source "IDynamicFeatureManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/provider/IDynamicFeatureManager$Stub;,
        Lcom/samsung/android/provider/IDynamicFeatureManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.provider.IDynamicFeatureManager"


# virtual methods
.method public abstract blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
