.class public final Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$Companion;


# instance fields
.field public final iconLimit:I

.field public final limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

.field public final visibleIcons:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;-><init>(Ljava/util/List;ILcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconInfo;",
            ">;I",
            "Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->visibleIcons:Ljava/util/List;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->iconLimit:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;->MaximumAmount:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;-><init>(Ljava/util/List;ILcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->visibleIcons:Ljava/util/List;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->visibleIcons:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->iconLimit:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->iconLimit:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->visibleIcons:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->iconLimit:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->visibleIcons:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NotificationIconsViewData(visibleIcons="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", iconLimit="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->iconLimit:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", limitType="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData;->limitType:Lcom/android/systemui/statusbar/notification/icon/ui/viewmodel/NotificationIconsViewData$LimitType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
