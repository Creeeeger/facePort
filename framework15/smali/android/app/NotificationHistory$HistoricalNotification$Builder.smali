.class public final Landroid/app/NotificationHistory$HistoricalNotification$Builder;
.super Ljava/lang/Object;
.source "NotificationHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationHistory$HistoricalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
.method static bridge synthetic blacklist -$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification$Builder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/NotificationHistory$HistoricalNotification;
    .locals 3

    new-instance v0, Landroid/app/NotificationHistory$HistoricalNotification;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;-><init>(Landroid/app/NotificationHistory$HistoricalNotification-IA;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPackage(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelName(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmChannelId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUid(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUserId(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmPostedTimeMs(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmText(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIcon(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/graphics/drawable/Icon;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmConversationId(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mSbnKey:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmSbnKey(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    iget v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mType:I

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmType(Landroid/app/NotificationHistory$HistoricalNotification;I)V

    iget-boolean v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIsChecked:Z

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmIsChecked(Landroid/app/NotificationHistory$HistoricalNotification;Z)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmUri(Landroid/app/NotificationHistory$HistoricalNotification;Landroid/net/Uri;)V

    iget-wide v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mWhen:J

    invoke-static {v0, v1, v2}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmWhen(Landroid/app/NotificationHistory$HistoricalNotification;J)V

    iget-object v1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mExtraTitle:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/app/NotificationHistory$HistoricalNotification;->-$$Nest$fputmExtraTitle(Landroid/app/NotificationHistory$HistoricalNotification;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist setChannelId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setChannelName(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mChannelName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setChecked(Z)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIsChecked:Z

    return-object p0
.end method

.method public blacklist setConversationId(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setExtraTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mExtraTitle:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public blacklist setPackage(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPostedTimeMs(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mPostedTimeMs:J

    return-object p0
.end method

.method public blacklist setSbnKey(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mSbnKey:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setText(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setTitle(Ljava/lang/String;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setType(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mType:I

    return-object p0
.end method

.method public blacklist setUid(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUid:I

    return-object p0
.end method

.method public blacklist setUri(Landroid/net/Uri;)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mUserId:I

    return-object p0
.end method

.method public blacklist setWhen(J)Landroid/app/NotificationHistory$HistoricalNotification$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/NotificationHistory$HistoricalNotification$Builder;->mWhen:J

    return-object p0
.end method
