.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;


# instance fields
.field public final reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

.field public final result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;

    iget-object v1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    iget-object v3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response(result="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->result:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$RESULT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$Response;->reason:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$REASON;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
