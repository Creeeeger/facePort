.class public final Lcom/android/systemui/qs/pipeline/data/repository/AutoAddSettingRepository;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/data/repository/AutoAddRepository;


# instance fields
.field public final userAutoAddRepositories:Landroid/util/SparseArray;

.field public final userAutoAddRepositoryFactory:Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository$Factory;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/pipeline/data/repository/UserAutoAddRepository$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-void
.end method
