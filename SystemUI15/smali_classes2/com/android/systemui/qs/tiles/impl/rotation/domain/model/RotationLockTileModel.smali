.class public final Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isCameraRotationEnabled:Z

.field public final isRotationLocked:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;->isRotationLocked:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/rotation/domain/model/RotationLockTileModel;->isCameraRotationEnabled:Z

    return-void
.end method
