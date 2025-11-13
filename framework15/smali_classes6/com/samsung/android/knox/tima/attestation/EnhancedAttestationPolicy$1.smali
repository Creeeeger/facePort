.class Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;
.super Ljava/lang/Object;
.source "EnhancedAttestationPolicy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-static {p2}, Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V

    const-string v1, "SEMEAPolicy"

    const-string v2, "On onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-static {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$mhandlePendingRequest(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-class v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy$1;->this$0:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->-$$Nest$fputmEnhancedAttestation(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;Lcom/samsung/android/knox/tima/attestation/IEnhancedAttestation;)V

    const-string v1, "SEMEAPolicy"

    const-string v2, "On onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
