.class public interface abstract Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback;
.super Ljava/lang/Object;
.source "ISemFingerprintRequestCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Stub;,
        Lcom/samsung/android/bio/fingerprint/ISemFingerprintRequestCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bio.fingerprint.ISemFingerprintRequestCallback"


# virtual methods
.method public abstract blacklist onResult(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
