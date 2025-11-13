.class public final Lcom/android/systemui/knox/UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public mUCMVendor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setUCMKeyguardVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/knox/UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method
