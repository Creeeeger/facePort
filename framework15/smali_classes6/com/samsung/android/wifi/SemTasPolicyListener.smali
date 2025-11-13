.class public interface abstract Lcom/samsung/android/wifi/SemTasPolicyListener;
.super Ljava/lang/Object;
.source "SemTasPolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/SemTasPolicyListener$Stub;,
        Lcom/samsung/android/wifi/SemTasPolicyListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wifi.SemTasPolicyListener"


# virtual methods
.method public abstract blacklist onTasPolicyChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
