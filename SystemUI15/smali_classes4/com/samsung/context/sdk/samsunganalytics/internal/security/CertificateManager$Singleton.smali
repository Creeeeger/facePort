.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final instance:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$1;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager$Singleton;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/security/CertificateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
