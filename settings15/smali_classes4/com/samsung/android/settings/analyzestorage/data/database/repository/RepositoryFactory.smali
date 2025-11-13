.class public abstract Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sGeneratorSupplier:Ljava/util/function/Supplier;

.field public static sRepositoryGenerator:Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;


# direct methods
.method public static getGenerator()Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->sRepositoryGenerator:Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->sGeneratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->sRepositoryGenerator:Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->sRepositoryGenerator:Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    return-object v0
.end method
