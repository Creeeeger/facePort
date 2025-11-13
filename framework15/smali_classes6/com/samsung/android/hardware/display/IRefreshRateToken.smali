.class public interface abstract Lcom/samsung/android/hardware/display/IRefreshRateToken;
.super Ljava/lang/Object;
.source "IRefreshRateToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/IRefreshRateToken$Stub;,
        Lcom/samsung/android/hardware/display/IRefreshRateToken$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.hardware.display.IRefreshRateToken"


# virtual methods
.method public abstract blacklist release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
