.class public Landroid/app/people/PeopleSpaceTile;
.super Ljava/lang/Object;
.source "PeopleSpaceTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/people/PeopleSpaceTile$Builder;
    }
.end annotation


# static fields
.field public static final blacklist BLOCK_CONVERSATIONS:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/people/PeopleSpaceTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist SHOW_CONTACTS:I = 0x10

.field public static final blacklist SHOW_CONVERSATIONS:I = 0x1

.field public static final blacklist SHOW_IMPORTANT_CONVERSATIONS:I = 0x4

.field public static final blacklist SHOW_STARRED_CONTACTS:I = 0x8


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
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/people/PeopleSpaceTile$1;

    invoke-direct {v0}, Landroid/app/people/PeopleSpaceTile$1;-><init>()V

    sput-object v0, Landroid/app/people/PeopleSpaceTile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/people/PeopleSpaceTile$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmId(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mId:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmUserName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserName:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmUserIcon(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmContactUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmUserHandle(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmPackageName(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmBirthdayText(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mBirthdayText:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmLastInteractionTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mLastInteractionTimestamp:J

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmIsImportantConversation(Landroid/app/people/PeopleSpaceTile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsImportantConversation:Z

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationKey(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationKey:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationContent(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationContent:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationSender(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationSender:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationCategory(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationCategory:Ljava/lang/String;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationDataUri(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationDataUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmMessagesCount(Landroid/app/people/PeopleSpaceTile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mMessagesCount:I

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmIntent(Landroid/app/people/PeopleSpaceTile$Builder;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationTimestamp(Landroid/app/people/PeopleSpaceTile$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationTimestamp:J

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmStatuses(Landroid/app/people/PeopleSpaceTile$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmCanBypassDnd(Landroid/app/people/PeopleSpaceTile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mCanBypassDnd:Z

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmIsPackageSuspended(Landroid/app/people/PeopleSpaceTile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsPackageSuspended:Z

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmIsUserQuieted(Landroid/app/people/PeopleSpaceTile$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsUserQuieted:Z

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmNotificationPolicyState(Landroid/app/people/PeopleSpaceTile$Builder;)I

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationPolicyState:I

    invoke-static {p1}, Landroid/app/people/PeopleSpaceTile$Builder;->-$$Nest$fgetmContactAffinity(Landroid/app/people/PeopleSpaceTile$Builder;)F

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactAffinity:F

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/people/PeopleSpaceTile$Builder;Landroid/app/people/PeopleSpaceTile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/people/PeopleSpaceTile;-><init>(Landroid/app/people/PeopleSpaceTile$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserName:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserIcon:Landroid/graphics/drawable/Icon;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactUri:Landroid/net/Uri;

    const-class v0, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mBirthdayText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mLastInteractionTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsImportantConversation:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationContent:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationSender:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationCategory:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationDataUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mMessagesCount:I

    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationTimestamp:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    const-class v1, Landroid/app/people/ConversationStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/app/people/ConversationStatus;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mCanBypassDnd:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsPackageSuspended:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsUserQuieted:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationPolicyState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactAffinity:F

    return-void
.end method

.method public static blacklist convertDrawableToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Icon;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public blacklist canBypassDnd()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mCanBypassDnd:Z

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBirthdayText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mBirthdayText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContactAffinity()F
    .locals 1

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactAffinity:F

    return v0
.end method

.method public blacklist getContactUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist getLastInteractionTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mLastInteractionTimestamp:J

    return-wide v0
.end method

.method public blacklist getMessagesCount()I
    .locals 1

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mMessagesCount:I

    return v0
.end method

.method public blacklist getNotificationCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationCategory:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNotificationContent()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNotificationDataUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationDataUri:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getNotificationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNotificationPolicyState()I
    .locals 1

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationPolicyState:I

    return v0
.end method

.method public blacklist getNotificationSender()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getNotificationTimestamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationTimestamp:J

    return-wide v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStatuses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/people/ConversationStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public blacklist getUserIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getUserName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist isImportantConversation()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsImportantConversation:Z

    return v0
.end method

.method public blacklist isPackageSuspended()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsPackageSuspended:Z

    return v0
.end method

.method public blacklist isUserQuieted()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsUserQuieted:Z

    return v0
.end method

.method public blacklist toBuilder()Landroid/app/people/PeopleSpaceTile$Builder;
    .locals 5

    new-instance v0, Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mId:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/people/PeopleSpaceTile;->mUserName:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/people/PeopleSpaceTile;->mUserIcon:Landroid/graphics/drawable/Icon;

    iget-object v4, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/people/PeopleSpaceTile$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mContactUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setUserHandle(Landroid/os/UserHandle;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setPackageName(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mBirthdayText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setBirthdayText(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-wide v1, p0, Landroid/app/people/PeopleSpaceTile;->mLastInteractionTimestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setLastInteractionTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-boolean v1, p0, Landroid/app/people/PeopleSpaceTile;->mIsImportantConversation:Z

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsImportantConversation(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationKey(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationContent:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationContent(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationSender:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationSender(Ljava/lang/CharSequence;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationCategory(Ljava/lang/String;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationDataUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationDataUri(Landroid/net/Uri;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget v1, p0, Landroid/app/people/PeopleSpaceTile;->mMessagesCount:I

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setMessagesCount(I)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIntent(Landroid/content/Intent;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-wide v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationTimestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationTimestamp(J)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-object v1, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setStatuses(Ljava/util/List;)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-boolean v1, p0, Landroid/app/people/PeopleSpaceTile;->mCanBypassDnd:Z

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setCanBypassDnd(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-boolean v1, p0, Landroid/app/people/PeopleSpaceTile;->mIsPackageSuspended:Z

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsPackageSuspended(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    iget-boolean v1, p0, Landroid/app/people/PeopleSpaceTile;->mIsUserQuieted:Z

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setIsUserQuieted(Z)Landroid/app/people/PeopleSpaceTile$Builder;

    iget v1, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationPolicyState:I

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setNotificationPolicyState(I)Landroid/app/people/PeopleSpaceTile$Builder;

    iget v1, p0, Landroid/app/people/PeopleSpaceTile;->mContactAffinity:F

    invoke-virtual {v0, v1}, Landroid/app/people/PeopleSpaceTile$Builder;->setContactAffinity(F)Landroid/app/people/PeopleSpaceTile$Builder;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mBirthdayText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mLastInteractionTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsImportantConversation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationContent:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationSender:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationDataUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mMessagesCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/app/people/PeopleSpaceTile;->mStatuses:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mCanBypassDnd:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsPackageSuspended:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/people/PeopleSpaceTile;->mIsUserQuieted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mNotificationPolicyState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/people/PeopleSpaceTile;->mContactAffinity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
