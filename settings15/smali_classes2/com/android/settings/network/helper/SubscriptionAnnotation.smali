.class public Lcom/android/settings/network/helper/SubscriptionAnnotation;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIsActive:Z

.field public final mIsAllowToDisplay:Z

.field public final mIsExisted:Z

.field public final mSubInfo:Landroid/telephony/SubscriptionInfo;

.field public final mType:I


# direct methods
.method public constructor <init>(Ljava/util/List;ILandroid/content/Context;Ljava/util/List;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mType:I

    if-ltz p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    iput-object p1, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v2

    :goto_0
    iput p2, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mType:I

    iput-boolean v2, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsExisted:Z

    if-ne p2, v1, :cond_5

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCardId()I

    move-result p2

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsActive:Z

    if-ltz p2, :cond_3

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p3, p2}, Lcom/android/settings/network/SubscriptionUtil;->isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v0, v2

    :cond_4
    iput-boolean v0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsAllowToDisplay:Z

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p2

    const/4 v1, -0x1

    if-le p2, v1, :cond_6

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    iput-boolean v0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsActive:Z

    const-class p1, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iget-object p2, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {p1, p3, p2}, Lcom/android/settings/network/SubscriptionUtil;->isSubscriptionVisible(Landroid/telephony/SubscriptionManager;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsAllowToDisplay:Z

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public getSubInfo()Landroid/telephony/SubscriptionInfo;
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method public getSubscriptionId()I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getType()I
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mType:I

    return p0
.end method

.method public isActive()Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsActive:Z

    return p0
.end method

.method public isDisplayAllowed()Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsAllowToDisplay:Z

    return p0
.end method

.method public isExisted()Z
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean p0, p0, Lcom/android/settings/network/helper/SubscriptionAnnotation;->mIsExisted:Z

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionAnnotation{subId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",exist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isExisted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",displayAllow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/network/helper/SubscriptionAnnotation;->isDisplayAllowed()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
