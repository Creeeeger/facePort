.class public final Landroid/app/NotificationHistory$HistoricalNotification;
.super Ljava/lang/Object;
.source "NotificationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalNotification"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    }
.end annotation


# instance fields
.field private blacklist mChannelId:Ljava/lang/String;

.field private blacklist mChannelName:Ljava/lang/String;

.field private blacklist mConversationId:Ljava/lang/String;

.field private blacklist mExtraTitle:Ljava/lang/String;

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mIsChecked:Z

.field private blacklist mPackage:Ljava/lang/String;

.field private blacklist mPostedTimeMs:J

.field private blacklist mSbnKey:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mTitle:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mUid:I

.field private blacklist mUri:Landroid/net/Uri;

.field private blacklist mUserId:I

.field private blacklist mWhen:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPackage(Landroid/app/NotificationHistory$HistoricalNotification;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelName(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConversationId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mConversationId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtraTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mExtraTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIcon(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIcon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsChecked(Landroid/app/NotificationHistory$HistoricalNotification;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIsChecked:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPackage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPostedTimeMs(Landroid/app/NotificationHistory$HistoricalNotification;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSbnKey(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mSbnKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmText(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmType(Landroid/app/NotificationHistory$HistoricalNotification;I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUid(Landroid/app/NotificationHistory$HistoricalNotification;I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUri(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUri:Landroid/net/Uri;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserId(Landroid/app/NotificationHistory$HistoricalNotification;I)V
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUserId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWhen(Landroid/app/NotificationHistory$HistoricalNotification;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mWhen:J

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/NotificationHistory$HistoricalNotification-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationHistory$HistoricalNotification;

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move v3, v0

    goto :goto_0

    :cond_4
    move v3, v1

    :goto_0
    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v5

    if-ne v4, v5, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public blacklist getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChannelName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getChecked()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIsChecked:Z

    return v0
.end method

.method public blacklist getConversationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mConversationId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtraTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mExtraTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPostedTimeMs()J
    .locals 2

    iget-wide v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J

    return-wide v0
.end method

.method public blacklist getSbnKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mSbnKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mType:I

    return v0
.end method

.method public blacklist getUid()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUid:I

    return v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getUserId()I
    .locals 1

    iget v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUserId:I

    return v0
.end method

.method public blacklist getWhen()J
    .locals 2

    iget-wide v0, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mWhen:J

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .locals 10

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getUserId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getPostedTimeMs()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/NotificationHistory$HistoricalNotification;->getConversationId()Ljava/lang/String;

    move-result-object v9

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIsChecked:Z

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\' \'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelName:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mChannelId:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HistoricalNotification{, key ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mSbnKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mPostedTimeMs="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/util/Date;

    iget-wide v6, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mPostedTimeMs:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "), mIsChecked ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIsChecked:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mUri ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mWhen="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mWhen:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mWhen:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mExtraTitle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mExtraTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mChannelName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mChannelId=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIcon="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mConversationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/app/NotificationHistory$HistoricalNotification;->mConversationId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
