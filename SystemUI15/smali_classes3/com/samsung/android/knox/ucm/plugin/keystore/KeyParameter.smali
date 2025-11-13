.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# instance fields
.field public mIsManaged:Z

.field public mOptions:Landroid/os/Bundle;

.field public mSourceUid:I


# direct methods
.method public constructor <init>(IZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    iput-boolean p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public getSourceUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mSourceUid:I

    return p0
.end method

.method public isManaged()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyParameter;->mIsManaged:Z

    return p0
.end method
