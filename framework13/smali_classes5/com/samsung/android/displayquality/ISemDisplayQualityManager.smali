.class public interface abstract Lcom/samsung/android/displayquality/ISemDisplayQualityManager;
.super Ljava/lang/Object;
.source "ISemDisplayQualityManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Stub;,
        Lcom/samsung/android/displayquality/ISemDisplayQualityManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.displayquality.ISemDisplayQualityManager"


# virtual methods
.method public abstract blacklist enhanceDisplayOutdoorVisibilityByLux(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setAdaptiveSync(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
