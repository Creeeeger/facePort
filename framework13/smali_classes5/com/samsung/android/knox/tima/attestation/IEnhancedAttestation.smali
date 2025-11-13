.class public interface abstract Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;
.super Ljava/lang/Object;
.source "IEnhancedAttestation.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation$Stub;,
        Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.tima.attestation.IEnhancedAttestation"


# virtual methods
.method public abstract blacklist enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
