.class public final Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
.super Ljava/lang/Object;
.source "UniversalCredentialUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UcmUriBuilder"
.end annotation


# instance fields
.field private alias:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private uid:Ljava/lang/String;

.field private user:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 831
    invoke-static {}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUCMVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->version:Ljava/lang/String;

    .line 832
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->source:Ljava/lang/String;

    return-void

    .line 828
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "source is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Ljava/lang/String;
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->source:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 881
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "ucmkeychain"

    .line 882
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 883
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 884
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->version:Ljava/lang/String;

    const-string/jumbo v2, "v1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 885
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->resourceId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 886
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 887
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->uid:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 888
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->uid:Ljava/lang/String;

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 890
    iget-object v1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->user:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 891
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 894
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->alias:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 895
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 900
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uri created : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniversalCredentialUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 876
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "source is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .locals 0

    if-eqz p1, :cond_0

    .line 869
    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->alias:Ljava/lang/String;

    return-object p0

    .line 867
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 844
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "resourceId not known"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 841
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->resourceId:Ljava/lang/String;

    return-object p0
.end method

.method public setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    .locals 0

    if-ltz p1, :cond_0

    .line 862
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->uid:Ljava/lang/String;

    return-object p0

    .line 860
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "uid is not known"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
