.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAppIcon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mAppPrimaryDefaultColor:I

.field public mBigText:Ljava/lang/String;

.field public mBigTitle:Ljava/lang/String;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mChildCount:I

.field public mContent:Ljava/lang/String;

.field public mContentIntent:Landroid/app/PendingIntent;

.field public mContentView:Landroid/widget/RemoteViews;

.field public final mContext:Landroid/content/Context;

.field public mConversationIcon:Landroid/graphics/drawable/Icon;

.field public mGroupSummary:Z

.field public mHasSemanticCall:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public final mInBox:[Ljava/lang/String;

.field public mIsCall:Z

.field public mIsGroupConversation:Z

.field public mIsMessagingStyle:Z

.field public mIsMissedCall:Z

.field public mKey:Ljava/lang/String;

.field public mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field public mLargeIcon:Landroid/graphics/drawable/Icon;

.field public final mMessageingStyleInfoArray:Ljava/util/ArrayList;

.field public mNeedsOnePhoneIcon:Z

.field public mNeedsTwoPhoneIcon:Z

.field public mPkg:Ljava/lang/String;

.field public mRemoteInputActionIntent:Landroid/app/PendingIntent;

.field public mRemoteInputIsSms:Z

.field public mRemoteInputMaxLength:I

.field public mRemoteInputSignature:Ljava/lang/String;

.field public mRemoteinput:Z

.field public mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field public mSbn:Landroid/service/notification/StatusBarNotification;

.field public mSemanticCallPendingIntent:Landroid/app/PendingIntent;

.field public mShowWhen:Z

.field public mTitle:Ljava/lang/String;

.field public mUnreadMessageCnt:I

.field public mUseSmallIcon:Z

.field public mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "content://com.android.server.notification.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method public static queryContentUriInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const-string v0, "image"

    const-string v1, "SQLiteException occurs in deleteContentUri because  "

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri_id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v3, 0x0

    invoke-static {p1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v2

    goto :goto_2

    :catch_1
    move-exception p1

    move-object p0, v2

    :goto_1
    :try_start_2
    const-string v0, "SubscreenNotificationInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :goto_2
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v2

    :cond_2
    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final findConversationTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;
    .locals 6

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.conversationTitle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.messagingUser"

    const-class v2, Landroid/app/Person;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getHistories(I)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, ""

    if-lez v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "title"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Notification$MessagingStyle;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getStyle()Landroid/app/Notification$Style;

    move-result-object p0

    check-cast p0, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Notification$MessagingStyle$Message;

    if-eqz v0, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string p0, "SubscreenNotificationInfo"

    const-string p1, "coverscreen can\'t find conversation title properly so ,, return empty"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v3
.end method

.method public final getContentHiddenText()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f11001a

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getHistories(I)Ljava/util/List;
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    move v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/NotificationManager;->semGetNotificationHistoryForPackage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final makeConversation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 11

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_9

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.messages"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.messagingUser"

    const-class v4, Landroid/app/Person;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Person;

    invoke-static {v2}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$MessagingStyle$Message;

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    invoke-direct {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;-><init>()V

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const-string v6, ""

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v6

    :goto_1
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v8, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mImageResolver:Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;

    invoke-virtual {v8, v7}, Lcom/android/systemui/statusbar/notification/row/NotificationInlineImageResolver;->loadImage(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " : no drawable for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "SubscreenNotificationInfo"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iput-object v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;

    :cond_3
    :goto_2
    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v7}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    move-object v8, v6

    :goto_3
    if-eqz v7, :cond_7

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v7, 0x1

    :goto_5
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.viber.voip"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v7, "Me"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :cond_8
    iput-boolean v7, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    iput-object v8, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/app/Notification$MessagingStyle$Message;->getTimestamp()J

    move-result-wide v7

    iput-wide v7, v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->findConversationTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->findConversationTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public final setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v5, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v5, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsOnePhoneIcon:Z

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsTwoPhoneIcon:Z

    const-string v6, "MESSAGE_KT_TWO_PHONE_OPPOSITE_RECEIVED"

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_0

    const-string/jumbo v6, "two_phone_missed_call_group"

    invoke-virtual {v3}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v6, :cond_1

    iget v6, v6, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->currentUserId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    if-eqz v9, :cond_2

    iget v9, v9, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->bModeUserId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ne v6, v9, :cond_3

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsOnePhoneIcon:Z

    goto :goto_2

    :cond_3
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mNeedsTwoPhoneIcon:Z

    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v6, :cond_5

    iget-boolean v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget v6, v6, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mUntruncatedChildCount:I

    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :cond_5
    iget-object v6, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz v6, :cond_7

    const-string v9, "missed_call"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMissedCall:Z

    const-string v6, "call"

    iget-object v9, v3, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-class v6, Landroid/app/Notification$CallStyle;

    invoke-virtual {v3, v6}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v7

    goto :goto_3

    :cond_6
    move v6, v5

    :goto_3
    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsCall:Z

    :cond_7
    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    iget-object v6, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const-string v9, ""

    if-eqz v6, :cond_c

    array-length v6, v6

    move v10, v5

    :goto_4
    if-ge v10, v6, :cond_c

    iget-object v11, v3, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v11, v11, v10

    if-nez v11, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v12

    if-eqz v12, :cond_a

    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    array-length v13, v12

    move v14, v5

    :goto_5
    if-ge v14, v13, :cond_a

    aget-object v15, v12, v14

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v16

    if-eqz v16, :cond_9

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string v7, "maxLength"

    const/16 v5, 0xc8

    invoke-virtual {v8, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputMaxLength:I

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v7, "isSms"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputIsSms:Z

    invoke-virtual {v15}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v7, "signature"

    invoke-virtual {v5, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputSignature:Ljava/lang/String;

    iget-object v5, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteInputActionIntent:Landroid/app/PendingIntent;

    :cond_9
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v5

    const/16 v7, 0xa

    if-ne v5, v7, :cond_b

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mHasSemanticCall:Z

    iget-object v5, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSemanticCallPendingIntent:Landroid/app/PendingIntent;

    :cond_b
    :goto_6
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->color:I

    const/4 v7, 0x2

    if-nez v5, :cond_d

    const/4 v5, 0x0

    goto/16 :goto_9

    :cond_d
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    instance-of v8, v5, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v8, :cond_f

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v8

    new-array v10, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_e

    invoke-virtual {v5, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_e
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v10}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :cond_f
    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v12

    if-nez v12, :cond_10

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v12

    if-nez v12, :cond_10

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    if-nez v6, :cond_10

    iget v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppPrimaryDefaultColor:I

    goto/16 :goto_8

    :cond_10
    const/4 v6, 0x3

    new-array v6, v6, [F

    invoke-static {v8, v10, v11, v6}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    const/4 v8, 0x1

    aget v10, v6, v8

    const v11, 0x3e19999a    # 0.15f

    sub-float/2addr v10, v11

    aput v10, v6, v8

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    const/4 v12, 0x0

    invoke-static {v12, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v6, v8

    aget v8, v6, v7

    const v10, 0x3e4ccccd    # 0.2f

    add-float/2addr v8, v10

    aput v8, v6, v7

    invoke-static {v11, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v6, v7

    const/16 v8, 0xff

    invoke-static {v8, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v10

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v11

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    int-to-float v10, v10

    int-to-float v8, v8

    const/high16 v11, 0x437f0000    # 255.0f

    div-float/2addr v8, v11

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    const/16 v10, 0xcc

    if-le v8, v10, :cond_11

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v12

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v13

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v13, v6}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    int-to-float v14, v14

    int-to-float v15, v8

    div-float/2addr v15, v11

    mul-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v10, v10

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v12

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    int-to-float v12, v13

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v6, v6

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v8, v11, v12, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    :cond_11
    :goto_8
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_12
    :goto_9
    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    const-string v5, "android.conversationIcon"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mConversationIcon:Landroid/graphics/drawable/Icon;

    const-string v5, "android.largeIcon"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Icon;

    iput-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mLargeIcon:Landroid/graphics/drawable/Icon;

    const-class v5, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v3}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    const/4 v6, 0x0

    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    if-eqz v5, :cond_13

    iget-object v6, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->context:Landroid/content/Context;

    iget-object v10, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v10}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v8

    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->conversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->states:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v12, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;

    invoke-direct {v12, v6, v10, v8}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$getUnreadCount$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Landroid/app/Notification$Builder;)V

    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v11, v6, v12}, Ljava/util/concurrent/ConcurrentHashMap;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v6, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;

    iget v6, v6, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$ConversationState;->unreadCount:I

    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUnreadMessageCnt:I

    const-string v6, "android.isGroupConversation"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->findConversationTitle(Landroid/service/notification/StatusBarNotification;)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_a

    :cond_13
    const-string v6, "android.title"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_a
    sget-boolean v8, Lcom/android/systemui/NotiRune;->NOTI_SUBSCREEN_SUPPORT_NOTIFICATION_HISTORY:Z

    if-eqz v8, :cond_20

    sget-object v8, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v10, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8, v10}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isNotificationHistoryEnabled()Z

    move-result v8

    if-eqz v8, :cond_20

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    if-nez v8, :cond_15

    if-eqz v5, :cond_14

    goto :goto_b

    :cond_14
    move-object/from16 v18, v3

    goto/16 :goto_13

    :cond_15
    :goto_b
    const/16 v5, 0x32

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getHistories(I)Ljava/util/List;

    move-result-object v5

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    if-eqz v0, :cond_16

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    :goto_c
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_17

    iget-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    iget-boolean v10, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    or-int/2addr v8, v10

    iput-boolean v8, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    :cond_17
    if-eqz v0, :cond_1f

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v10, "type"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "title"

    invoke-virtual {v0, v11, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "text"

    invoke-virtual {v0, v12, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "uri"

    invoke-virtual {v0, v13, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "sbnKey"

    invoke-virtual {v0, v14, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "postedTime"

    move/from16 v17, v8

    const-wide/16 v7, 0x0

    move-object/from16 v18, v3

    invoke-virtual {v0, v15, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v15, "when"

    invoke-virtual {v0, v15, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v15, "isChecked"

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v15, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v5, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v5, 0x19

    move/from16 v14, v17

    if-lt v14, v5, :cond_18

    goto :goto_12

    :cond_18
    const/4 v5, 0x1

    if-ne v10, v5, :cond_19

    const/4 v5, 0x1

    goto :goto_e

    :cond_19
    const/4 v5, 0x0

    :goto_e
    new-instance v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    invoke-direct {v15}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;-><init>()V

    iput-object v12, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mContentText:Ljava/lang/String;

    move-object/from16 v17, v9

    iget-object v9, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    if-nez v9, :cond_1a

    iput-object v12, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    :cond_1a
    iput-object v11, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mSender:Ljava/lang/String;

    iput-wide v7, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mTimeStamp:J

    iput-wide v2, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mPostedTime:J

    iput-boolean v5, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsReply:Z

    iput-boolean v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mIsChecked:Z

    const/4 v2, 0x2

    if-ne v10, v2, :cond_1c

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, v13}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->queryContentUriInternal(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1b

    iput-object v0, v15, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->mUriImage:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :cond_1b
    move v7, v2

    move v8, v14

    :goto_f
    move-object/from16 v9, v17

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move-object/from16 v2, p1

    goto/16 :goto_d

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_1c
    :goto_10
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v14, 0x1

    goto :goto_11

    :cond_1d
    move/from16 v14, v17

    const/4 v2, 0x2

    move-object/from16 v17, v9

    move v8, v14

    :goto_11
    move v7, v2

    goto :goto_f

    :cond_1e
    move-object/from16 v18, v3

    :goto_12
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$2;

    invoke-direct {v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    goto :goto_13

    :cond_1f
    move-object/from16 v18, v3

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->makeConversation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    goto :goto_13

    :cond_20
    move-object/from16 v18, v3

    if-eqz v5, :cond_21

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->makeConversation(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_21
    :goto_13
    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    if-nez v0, :cond_23

    if-nez v6, :cond_22

    const/4 v0, 0x0

    goto :goto_14

    :cond_22
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_23
    :goto_14
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    const-string v0, "android.text"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    if-eqz v2, :cond_24

    const-class v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    sget-object v3, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v3, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    move-object/from16 v3, p1

    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->isKnoxSecurity(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mUserPublic:Z

    if-eqz v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    goto :goto_15

    :cond_24
    move-object/from16 v3, p1

    :cond_25
    :goto_15
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    if-nez v2, :cond_27

    if-nez v0, :cond_26

    const/4 v2, 0x0

    goto :goto_16

    :cond_26
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_27
    :goto_16
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    const-string v0, "android.bigText"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_28

    const/4 v2, 0x0

    goto :goto_17

    :cond_28
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    const-string v0, "android.title.big"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_29

    const/4 v2, 0x0

    goto :goto_18

    :cond_29
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_18
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigTitle:Ljava/lang/String;

    const-string v0, "android.subText"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_2a

    goto :goto_19

    :cond_2a
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :goto_19
    const-string v0, "android.picture"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_1
    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInsignificantSummary()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_2c

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_2b

    iget-object v2, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->mAttachedChildren:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    goto :goto_1b

    :catch_1
    move-exception v0

    goto :goto_1e

    :cond_2b
    :goto_1a
    const/4 v8, 0x0

    goto :goto_1b

    :cond_2c
    const/4 v5, 0x1

    goto :goto_1a

    :goto_1b
    const-string v2, "android.substName"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    const v6, 0x402080

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    const v7, 0x7f0609bc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppPrimaryDefaultColor:I

    const/16 v6, 0x21

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageManager;->semGetApplicationIconForIconTray(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v6, :cond_2d

    move v7, v5

    goto :goto_1c

    :cond_2d
    move v7, v8

    :goto_1c
    iput-boolean v7, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUseSmallIcon:Z

    if-nez v2, :cond_2e

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :cond_2e
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1f

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    :goto_1e
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1f
    const-string v0, "android.textLines"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_30

    move v2, v8

    :goto_20
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    array-length v3, v3

    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_30

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    aget-object v5, v0, v2

    if-nez v5, :cond_2f

    const/4 v5, 0x0

    goto :goto_21

    :cond_2f
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_21
    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_30
    move-object/from16 v2, v18

    iget-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    iput-wide v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    const-string v0, "android.showWhen"

    invoke-virtual {v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    move v5, v8

    :goto_22
    if-ge v5, v0, :cond_33

    iget-object v2, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v3, :cond_32

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mExpandedChild:Landroid/view/View;

    if-nez v3, :cond_31

    iget-object v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->mContractedChild:Landroid/view/View;

    :cond_31
    if-eqz v3, :cond_32

    const v0, 0x10204bf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_33

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_23

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    :cond_33
    :goto_23
    return-void
.end method

.method public final useSmallIcon()Z
    .locals 5

    const-string v0, "android"

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUseSmallIcon:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": use small icon. androidPkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", systemuiPkg = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mUseSmallIcon = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mUseSmallIcon:Z

    const-string v0, "SubscreenNotificationInfo"

    invoke-static {v3, p0, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    return v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
