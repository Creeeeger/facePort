.class public interface abstract Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;
.super Ljava/lang/Object;
.source "IEnhancedAttestationPolicyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Stub;,
        Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.tima.attestation.IEnhancedAttestationPolicyCallback"


# virtual methods
.method public abstract blacklist onAttestationFinished(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
