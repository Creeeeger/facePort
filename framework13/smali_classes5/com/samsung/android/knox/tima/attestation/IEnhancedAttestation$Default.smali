.class public Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation$Default;
.super Ljava/lang/Object;
.source "IEnhancedAttestation.java"

# interfaces
.implements Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist enhancedAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;Z)V
    .locals 0
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "auk"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestationPolicyCallback;
    .param p4, "onPrem"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
