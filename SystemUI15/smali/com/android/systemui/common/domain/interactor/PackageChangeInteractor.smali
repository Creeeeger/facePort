.class public final Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final packageChangeRepository:Lcom/android/systemui/common/data/repository/PackageChangeRepository;

.field public final userInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/data/repository/PackageChangeRepository;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;->packageChangeRepository:Lcom/android/systemui/common/data/repository/PackageChangeRepository;

    iput-object p2, p0, Lcom/android/systemui/common/domain/interactor/PackageChangeInteractor;->userInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    return-void
.end method
