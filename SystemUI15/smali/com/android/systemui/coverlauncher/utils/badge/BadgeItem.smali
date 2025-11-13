.class public final Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mInfo:Ljava/lang/String;

.field public final mNotificationItems:Ljava/util/List;

.field public mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public final addOrUpdateNotificationItem(Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;

    :goto_0
    if-eqz v0, :cond_2

    iget v1, v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    iget p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    if-ne v1, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget v2, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    sub-int/2addr v2, v1

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    iput p1, v0, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mNotificationItems:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    iget p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/NotificationItem;->count:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;

    iget-object p1, p1, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "info="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/coverlauncher/utils/badge/BadgeItem;->mTotalCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
