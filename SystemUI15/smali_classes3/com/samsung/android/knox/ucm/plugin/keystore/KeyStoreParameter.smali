.class public Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/security/KeyStore$ProtectionParameter;


# static fields
.field public static PRIVATE_RESOURCE:I = 0x0

.field public static SHARED_KEYCHAIN_RESOURCE:I = 0x1

.field public static SHARED_WIFI_RESOURCE:I = 0x2

.field public static UID_SELF:I = -0x1


# instance fields
.field public final mOptions:Landroid/os/Bundle;

.field public final mOwnerUid:I

.field public final mResourceId:I


# direct methods
.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    iput p1, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    iput-object p3, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getOptions()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public getOwnerUid()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mOwnerUid:I

    return p0
.end method

.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/ucm/plugin/keystore/KeyStoreParameter;->mResourceId:I

    return p0
.end method
