.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;


# instance fields
.field public final activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

.field public final contentDescription:Ljava/lang/CharSequence;

.field public final enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

.field public final expandedAccessibilityClassName:Ljava/lang/String;

.field public final icon:Lkotlin/jvm/functions/Function0;

.field public final iconRes:Ljava/lang/Integer;

.field public final label:Ljava/lang/CharSequence;

.field public final secondaryLabel:Ljava/lang/CharSequence;

.field public final sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

.field public final stateDescription:Ljava/lang/CharSequence;

.field public final supportedActions:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;Ljava/lang/Integer;Ljava/lang/CharSequence;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;Ljava/lang/CharSequence;Ljava/util/Set;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            "Ljava/lang/Integer;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Set<",
            "+",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;",
            ">;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p6, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    iput-object p9, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iput-object p10, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    iput-object p11, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    iget-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    iget-object v3, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/controls/controller/ControlInfo$$ExternalSyntheticOutline0;->m(IILjava/lang/CharSequence;)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-virtual {v3}, Ljava/lang/Enum;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->label:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->secondaryLabel:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->supportedActions:Ljava/util/Set;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->contentDescription:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->stateDescription:Ljava/lang/CharSequence;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "QSTileState(icon="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->icon:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", iconRes="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->iconRes:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", label="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", activationState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", secondaryLabel="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", supportedActions="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentDescription="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", stateDescription="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", sideViewIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", enabledState="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->enabledState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$EnabledState;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expandedAccessibilityClassName="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->expandedAccessibilityClassName:Ljava/lang/String;

    const-string v0, ")"

    invoke-static {v5, p0, v0}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
