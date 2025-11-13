.class final Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$monitor$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$monitor$2;->this$0:Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl$monitor$2;->this$0:Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/common/data/repository/PackageChangeRepositoryImpl;->monitorFactory:Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Factory;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-interface {p0, v0}, Lcom/android/systemui/common/data/repository/PackageUpdateMonitor$Factory;->create(Landroid/os/UserHandle;)Lcom/android/systemui/common/data/repository/PackageUpdateMonitor;

    move-result-object p0

    return-object p0
.end method
