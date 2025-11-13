.class public final Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats$Companion;

.field public static final empty:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;


# instance fields
.field public final hasClearableAlertingNotifs:Z

.field public final hasClearableSilentNotifs:Z

.field public final hasNonClearableAlertingNotifs:Z

.field public final hasNonClearableSilentNotifs:Z

.field public final numActiveNotifs:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->Companion:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats$Companion;

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;-><init>(IZZZZ)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->empty:Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    return-void
.end method

.method public constructor <init>(IZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;

    iget v1, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifStats(numActiveNotifs="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->numActiveNotifs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", hasNonClearableAlertingNotifs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableAlertingNotifs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasClearableAlertingNotifs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableAlertingNotifs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasNonClearableSilentNotifs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasNonClearableSilentNotifs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasClearableSilentNotifs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/NotifStats;->hasClearableSilentNotifs:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
