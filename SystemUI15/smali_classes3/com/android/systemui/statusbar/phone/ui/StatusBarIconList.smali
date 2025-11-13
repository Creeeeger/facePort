.class public final Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mSlots:Ljava/util/ArrayList;

.field public final mViewOnlySlots:Ljava/util/List;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mViewOnlySlots:Ljava/util/List;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final findOrInsertSlot(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;)V

    invoke-virtual {p0, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v1
.end method

.method public final getIconHolder(ILjava/lang/String;)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getHolderForTag(I)Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    move-result-object p0

    return-object p0
.end method

.method public final getSlot(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    return-object p0
.end method

.method public final getViewIndex(ILjava/lang/String;)I
    .locals 6

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->findOrInsertSlot(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v1, p2, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->hasIconsInSlot()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mHolder:Lcom/android/systemui/statusbar/phone/StatusBarIconHolder;

    if-nez v5, :cond_0

    move v3, v0

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v3, v4

    :goto_1
    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->mSubSlots:Ljava/util/ArrayList;

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez p1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ui/StatusBarIconList$Slot;->getIndexForTag(I)I

    move-result p0

    sub-int/2addr v0, p0

    sub-int/2addr v0, v3

    :goto_2
    add-int/2addr v2, v0

    return v2
.end method
