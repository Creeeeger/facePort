.class public Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TYPE_SKIP_STATUS:I = 0x4

.field public static final TYPE_SWIPE:I = 0x3

.field public static final TYPE_WAKE_DISPLAY:I = 0x2

.field public static final TYPE_WAKE_LOCK_SCREEN:I = 0x1


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{PluginSensor type=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/plugins/SensorManagerPlugin$Sensor;->mType:I

    const-string v1, "\"}"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
