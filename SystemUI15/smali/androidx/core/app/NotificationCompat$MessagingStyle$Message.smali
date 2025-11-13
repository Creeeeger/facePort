.class public final Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDataMimeType:Ljava/lang/String;

.field public mDataUri:Landroid/net/Uri;

.field public final mExtras:Landroid/os/Bundle;

.field public final mPerson:Landroidx/core/app/Person;

.field public final mText:Ljava/lang/CharSequence;

.field public final mTimestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    iput-wide p2, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    iput-object p4, p0, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/app/Person$Builder;

    invoke-direct {v0}, Landroidx/core/app/Person$Builder;-><init>()V

    iput-object p4, v0, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    new-instance p4, Landroidx/core/app/Person;

    invoke-direct {p4, v0}, Landroidx/core/app/Person;-><init>(Landroidx/core/app/Person$Builder;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    return-void
.end method

.method public static getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/Bundle;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    const-string/jumbo v6, "text"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_0
    const-string/jumbo v5, "time"

    iget-wide v6, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mTimestamp:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mPerson:Landroidx/core/app/Person;

    if-eqz v5, :cond_1

    iget-object v6, v5, Landroidx/core/app/Person;->mName:Ljava/lang/CharSequence;

    const-string v7, "sender"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroidx/core/app/Person;->toAndroidPerson()Landroid/app/Person;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message$Api28Impl;->castToParcelable(Landroid/app/Person;)Landroid/os/Parcelable;

    move-result-object v5

    const-string v6, "sender_person"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    iget-object v5, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string/jumbo v6, "type"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v5, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    const-string/jumbo v6, "uri"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    iget-object v3, v3, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    if-eqz v3, :cond_4

    const-string v5, "extras"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_4
    aput-object v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_8

    aget-object v2, p0, v1

    instance-of v3, v2, Landroid/os/Bundle;

    if-eqz v3, :cond_7

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "extras"

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "type"

    const-string v6, "sender"

    const-string v7, "sender_person"

    const-string v8, "person"

    const-string/jumbo v9, "time"

    const-string/jumbo v10, "text"

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/app/Person;->fromBundle(Landroid/os/Bundle;)Landroidx/core/app/Person;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/app/Person;

    invoke-static {v6}, Landroidx/core/app/Person;->fromAndroidPerson(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v6

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v7, Landroidx/core/app/Person$Builder;

    invoke-direct {v7}, Landroidx/core/app/Person$Builder;-><init>()V

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v7, Landroidx/core/app/Person$Builder;->mName:Ljava/lang/CharSequence;

    new-instance v6, Landroidx/core/app/Person;

    invoke-direct {v6, v7}, Landroidx/core/app/Person;-><init>(Landroidx/core/app/Person$Builder;)V

    goto :goto_1

    :cond_3
    move-object v6, v11

    :goto_1
    new-instance v7, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-direct {v7, v8, v9, v10, v6}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v5, v7, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataMimeType:Ljava/lang/String;

    iput-object v4, v7, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mDataUri:Landroid/net/Uri;

    :cond_4
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v7, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move-object v11, v7

    :catch_0
    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method
