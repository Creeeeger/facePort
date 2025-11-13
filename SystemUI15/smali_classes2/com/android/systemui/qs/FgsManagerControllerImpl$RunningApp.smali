.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appLabel:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public final packageName:Ljava/lang/String;

.field public stopped:Z

.field public final timeStarted:J

.field public final uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

.field public final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    iput-object p5, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;-><init>(ILjava/lang/String;JLcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;)V

    iput-object p6, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    iput-object p7, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 5

    const-string v0, "RunningApp: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    const-string v2, "packageName="

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    sub-long/2addr v0, v2

    const-string/jumbo p2, "timeStarted="

    const-string v4, " (time since start = "

    invoke-static {p2, v2, v3, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "uiControl="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "appLabel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    const-string/jumbo p2, "stopped="

    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    move-object p0, p1

    check-cast p0, Landroid/util/IndentingPrintWriter;

    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget v1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    iget v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    iget-wide v5, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    iget-object p1, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-wide v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/animation/Scale$$ExternalSyntheticOutline0;->m(IIJ)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RunningApp(userId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uiControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
