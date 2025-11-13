.class public Landroid/sec/enterprise/ClientCertificateManager;
.super Ljava/lang/Object;
.source "ClientCertificateManager.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 55
    const-string v0, "ClientCertificateManager"

    sput-object v0, Landroid/sec/enterprise/ClientCertificateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAliasesForWiFi()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCertificateAliasesHavingPrivateKey()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSlotIdForCaller(Ljava/lang/String;)J
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .line 80
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 104
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public blacklist isAccessControlMethodPassword()Z
    .locals 1

    .line 135
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCCMPolicyEnabledForCaller()Z
    .locals 1

    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    return v0
.end method
