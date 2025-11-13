.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/DataSaverAutoAddable;
.super Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DataSaverController;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;-><init>(Lcom/android/systemui/statusbar/policy/CallbackController;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/pipeline/domain/autoaddable/CallbackControllerAutoAddable;->getAutoAddTracking()Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSaverAutoAddable ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/DataSaverAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/DataSaverAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method

.method public final getSpec()Lcom/android/systemui/qs/pipeline/shared/TileSpec;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "saver"

    invoke-static {p0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object p0

    return-object p0
.end method
