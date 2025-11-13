.class public final Lcom/samsung/android/settings/eternal/data/SupplierInfo;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDTDVersion:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mUnSupportedSolution:Ljava/lang/String;

.field public final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUri:Landroid/net/Uri;

    iget-object v0, p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mDTDVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mDTDVersion:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/eternal/data/SupplierInfo$Builder;->mUnSupportedSolution:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/data/SupplierInfo;->mUnSupportedSolution:Ljava/lang/String;

    return-void
.end method
