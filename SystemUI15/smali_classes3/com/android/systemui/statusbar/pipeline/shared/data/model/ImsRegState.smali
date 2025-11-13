.class public final Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/log/table/Diffable;


# instance fields
.field public ePDGRegState:Z

.field public voLTERegState:Z

.field public voWifiRegState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZ)V

    return-void
.end method

.method public static copy$default(Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;)Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;-><init>(ZZZ)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final logDiffs(Ljava/lang/Object;Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;)V
    .locals 2

    check-cast p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "voWifiRegState"

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "voLTERegState"

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    :cond_1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    if-eq p1, p0, :cond_2

    const-string p1, "ePDGRegState"

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/log/table/TableLogBuffer$TableRowLoggerImpl;->logChange(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voWifiRegState:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->voLTERegState:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/pipeline/shared/data/model/ImsRegState;->ePDGRegState:Z

    const-string v2, "ImsRegState(voWifiRegState="

    const-string v3, ", voLTERegState="

    const-string v4, ", ePDGRegState="

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
