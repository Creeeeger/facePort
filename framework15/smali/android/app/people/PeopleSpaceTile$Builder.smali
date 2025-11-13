.class public Landroid/app/people/PeopleSpaceTile$Builder;
.super Ljava/lang/Object;
.source "PeopleSpaceTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleSpaceTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBirthdayText:Ljava/lang/String;

.field private blacklist mCanBypassDnd:Z

.field private blacklist mContactAffinity:F

.field private blacklist mContactUri:Landroid/net/Uri;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mIntent:Landroid/content/Intent;

.field private blacklist mIsImportantConversation:Z

.field private blacklist mIsPackageSuspended:Z

.field private blacklist mIsUserQuieted:Z

.field private blacklist mLastInteractionTimestamp:J

.field private blacklist mMessagesCount:I

.field private blacklist mNotificationCategory:Ljava/lang/String;

.field private blacklist mNotificationContent:Ljava/lang/CharSequence;

.field private blacklist mNotificationDataUri:Landroid/net/Uri;

.field private blacklist mNotificationKey:Ljava/lang/String;

.field private blacklist mNotificationPolicyState:I

.field private blacklist mNotificationSender:Ljava/lang/CharSequence;

.field private blacklist mNotificationTimestamp:J

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStatuses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUserHandle:Landroid/os/UserHandle;

.field private blacklist mUserIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mUserName:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBirthdayText(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCanBypassDnd(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactAffinity(Landroid/app/people/PeopleSpaceTile$Builder;)F
    .locals 0

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContactUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIntent(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsImportantConversation(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsPackageSuspended(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUserQuieted(Landroid/app/people/PeopleSpaceTile$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastInteractionTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessagesCount(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationCategory(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationContent(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationDataUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationKey(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationPolicyState(Landroid/app/people/PeopleSpaceTile$Builder;)I
    .locals 0

    iget p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationSender(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStatuses(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserHandle(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserIcon(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/graphics/drawable/Icon;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/app/people/ConversationChannel;Landroid/content/pm/LauncherApps;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getStatuses()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getLastEventTimestamp()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/people/ConversationChannel;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/NotificationChannel;->canBypassDnd()Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-boolean v1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    iput v3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/LauncherApps;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroid/app/people/PeopleSpaceTile;->convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/people/PeopleSpaceTile$Builder;->getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/content/Intent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    iput-object p4, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/app/people/PeopleSpaceTile;
    .locals 2

    new-instance v0, Landroid/app/people/PeopleSpaceTile;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/people/PeopleSpaceTile;-><init>(Landroid/app/people/PeopleSpaceTile$Builder;Landroid/app/people/PeopleSpaceTile-IA;)V

    return-object v0
.end method

.method public blacklist getContactUri(Landroid/content/pm/ShortcutInfo;)Landroid/net/Uri;
    .locals 3

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPersons()[Landroid/app/Person;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public blacklist setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mBirthdayText:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setCanBypassDnd(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mCanBypassDnd:Z

    return-object p0
.end method

.method public blacklist setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactAffinity:F

    return-object p0
.end method

.method public blacklist setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setId(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setIntent(Landroid/content/Intent;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public blacklist setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsImportantConversation:Z

    return-object p0
.end method

.method public blacklist setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsPackageSuspended:Z

    return-object p0
.end method

.method public blacklist setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mIsUserQuieted:Z

    return-object p0
.end method

.method public blacklist setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mLastInteractionTimestamp:J

    return-object p0
.end method

.method public blacklist setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mMessagesCount:I

    return-object p0
.end method

.method public blacklist setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationCategory:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationDataUri:Landroid/net/Uri;

    return-object p0
.end method

.method public blacklist setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationKey:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationPolicyState:I

    return-object p0
.end method

.method public blacklist setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationSender:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public blacklist setNotificationTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mNotificationTimestamp:J

    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;)",
            "Landroid/app/people/PeopleSpaceTile$Builder;"
        }
    .end annotation

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mStatuses:Ljava/util/List;

    return-object p0
.end method

.method public blacklist setUserHandle(Landroid/os/UserHandle;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method public blacklist setUserIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public blacklist setUserName(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/PeopleSpaceTile$Builder;->mUserName:Ljava/lang/CharSequence;

    return-object p0
.end method
