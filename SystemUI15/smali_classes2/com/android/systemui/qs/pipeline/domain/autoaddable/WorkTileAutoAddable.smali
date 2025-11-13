.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/WorkTileAutoAddable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddable;


# instance fields
.field public final autoAddTracking:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

.field public final description:Ljava/lang/String;

.field public final spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final workTileRestoreProcessor:Lcom/android/systemui/qs/pipeline/data/restoreprocessors/WorkTileRestoreProcessor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/qs/pipeline/data/restoreprocessors/WorkTileRestoreProcessor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "WorkMode"

    invoke-static {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    sget-object p1, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Always;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "WorkTileAutoAddable ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WorkTileAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/WorkTileAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method
