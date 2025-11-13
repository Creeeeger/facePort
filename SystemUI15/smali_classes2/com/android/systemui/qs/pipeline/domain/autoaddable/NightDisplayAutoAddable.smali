.class public final Lcom/android/systemui/qs/pipeline/domain/autoaddable/NightDisplayAutoAddable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/pipeline/domain/model/AutoAddable;


# instance fields
.field public final autoAddTracking:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking;

.field public final description:Ljava/lang/String;

.field public final nightDisplayListenerBuilder:Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;

.field public final spec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dagger/NightDisplayListenerModule$Builder;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p1

    sget-object p2, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "night"

    invoke-static {p2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object p2

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;

    invoke-direct {p1, p2}, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$IfNotAdded;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/model/AutoAddTracking$Disabled;

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "NightDisplayAutoAddable ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/NightDisplayAutoAddable;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/NightDisplayAutoAddable;->description:Ljava/lang/String;

    return-object p0
.end method
