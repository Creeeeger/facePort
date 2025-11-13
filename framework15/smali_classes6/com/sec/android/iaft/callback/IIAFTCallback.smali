.class public interface abstract Lcom/sec/android/iaft/callback/IIAFTCallback;
.super Ljava/lang/Object;
.source "IIAFTCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/callback/IIAFTCallback$Stub;,
        Lcom/sec/android/iaft/callback/IIAFTCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.sec.android.iaft.callback.IIAFTCallback"


# virtual methods
.method public abstract blacklist traceResult(Ljava/lang/String;IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
