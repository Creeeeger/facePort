.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;


# instance fields
.field public final showClock:Z

.field public final showNotificationIcons:Z

.field public final showOngoingActivityChip:Z

.field public final showOngoingCallChip:Z

.field public final showSystemInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->Companion:Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel$Companion;

    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatusBarVisibilityModel(showClock="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showClock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showNotificationIcons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showNotificationIcons:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOngoingCallChip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingCallChip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showOngoingActivityChip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showOngoingActivityChip:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showSystemInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarVisibilityModel;->showSystemInfo:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
