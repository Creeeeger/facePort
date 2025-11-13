.class public abstract Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sDefaultGenerator:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

.field public static sDefaultGeneratorSupplier:Ljava/util/function/Supplier;

.field public static final sGeneratorMap:Landroid/util/SparseArray;

.field public static final sGeneratorSupplierList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorSupplierList:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorMap:Landroid/util/SparseArray;

    return-void
.end method
