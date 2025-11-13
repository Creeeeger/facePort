.class Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;
.super Ljava/lang/Object;
.source "SecureSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$SecureSession;,
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PublicSessionEndpoint;,
        Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager$PrivateSessionEndpoint;
    }
.end annotation


# static fields
.field private static final blacklist CRYPTO_PROVIDER:Ljava/lang/String; = "AndroidOpenSSL"

.field private static final blacklist sSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;->sSecureRandom:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/dar/ddar/securesession/SecureSessionManager;->sSecureRandom:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
