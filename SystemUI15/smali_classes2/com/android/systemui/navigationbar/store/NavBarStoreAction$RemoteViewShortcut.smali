.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final position:I

.field public final priority:I

.field public final remoteViews:Landroid/widget/RemoteViews;

.field public final requestClass:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    iput p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/widget/RemoteViews;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, -0x1

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;-><init>(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    iget-object v1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    iget v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    iget p1, p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroid/widget/RemoteViews;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->remoteViews:Landroid/widget/RemoteViews;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteViewShortcut(requestClass="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->requestClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", remoteViews="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", position="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->position:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", priority="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->priority:I

    const-string v0, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
