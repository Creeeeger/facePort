.class public final Lcom/android/systemui/statusbar/events/PrivacyEvent;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/StatusEvent;


# instance fields
.field public contentDescription:Ljava/lang/String;

.field public forceVisible:Z

.field public final priority:I

.field public privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

.field public privacyItems:Ljava/util/List;

.field public final showAnimation:Z

.field public final viewCreator:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->showAnimation:Z

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->priority:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    new-instance p1, Lcom/android/systemui/statusbar/events/PrivacyEvent$viewCreator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/PrivacyEvent$viewCreator$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyEvent;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/events/PrivacyEvent;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final getContentDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public final getForceVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    return p0
.end method

.method public final getPriority()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->priority:I

    return p0
.end method

.method public final getShowAnimation()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->showAnimation:Z

    return p0
.end method

.method public final getViewCreator()Lkotlin/jvm/functions/Function1;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->viewCreator:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final setForceVisible()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    return-void
.end method

.method public final shouldUpdateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PrivacyEvent(forceVisible="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", privacyItems="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateFromEvent(Lcom/android/systemui/statusbar/events/StatusEvent;)V
    .locals 2

    instance-of v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    iget-object v0, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyChip:Lcom/android/systemui/privacy/OngoingPrivacyChip;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->privacyItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/systemui/privacy/OngoingPrivacyChip;->setPrivacyList(Ljava/util/List;)V

    :goto_1
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/events/PrivacyEvent;->forceVisible:Z

    :cond_3
    return-void
.end method
