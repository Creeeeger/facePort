.class public final Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final disable1:I

.field public final disable2:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    iput p2, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;

    iget v1, p1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    iget v3, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    iget p1, p1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logChange(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;)V
    .locals 3

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->INFO:Lcom/android/systemui/log/core/LogLevel;

    new-instance v1, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$logChange$2;

    invoke-direct {v1, p2}, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel$logChange$2;-><init>(Lcom/android/systemui/statusbar/disableflags/DisableFlagsLogger;)V

    const/4 p2, 0x0

    const-string v2, "DisableFlagsModel"

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/core/LogMessage;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iget v1, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    iput v1, v0, Lcom/android/systemui/log/LogMessageImpl;->int1:I

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/log/LogMessageImpl;

    iget p0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    iput p0, v0, Lcom/android/systemui/log/LogMessageImpl;->int2:I

    invoke-virtual {p1, p2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/core/LogMessage;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisableFlagsModel(disable1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disable2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/disableflags/data/model/DisableFlagsModel;->disable2:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
