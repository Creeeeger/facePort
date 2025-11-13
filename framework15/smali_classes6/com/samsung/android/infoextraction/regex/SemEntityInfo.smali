.class public Lcom/samsung/android/infoextraction/regex/SemEntityInfo;
.super Ljava/lang/Object;
.source "SemEntityInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/infoextraction/regex/SemEntityInfo$Type;
    }
.end annotation


# instance fields
.field private blacklist dateInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist dateMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist emailAddressInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist phoneNumInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist timeInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist timeMillisInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist urlInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public blacklist deleteInfo(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_0
    return v1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_1
    return v1

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_2
    return v1

    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_3
    return v1

    :pswitch_4
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_4
    return v1

    :pswitch_5
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_5
    return v1

    :pswitch_6
    iget-object v2, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v0

    :cond_6
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getCount(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getInfoList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "15.0"
    .end annotation

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setInfo(Ljava/lang/String;I)V
    .locals 1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->urlInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->emailAddressInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->phoneNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->timeInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateMillisInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/infoextraction/regex/SemEntityInfo;->dateInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
