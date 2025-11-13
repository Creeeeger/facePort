.class public final Landroid/service/settings/suggestions/Suggestion;
.super Ljava/lang/Object;
.source "Suggestion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/suggestions/Suggestion$Builder;,
        Landroid/service/settings/suggestions/Suggestion$Flags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_HAS_BUTTON:I = 0x1

.field public static final greylist-max-o FLAG_ICON_TINTABLE:I = 0x2


# instance fields
.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mIcon:Landroid/graphics/drawable/Icon;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mPendingIntent:Landroid/app/PendingIntent;

.field private final greylist-max-o mSummary:Ljava/lang/CharSequence;

.field private final greylist-max-o mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/settings/suggestions/Suggestion$1;

    invoke-direct {v0}, Landroid/service/settings/suggestions/Suggestion$1;-><init>()V

    sput-object v0, Landroid/service/settings/suggestions/Suggestion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    const-class v0, Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    const-class v0, Landroid/app/PendingIntent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/suggestions/Suggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/settings/suggestions/Suggestion$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmId(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmTitle(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmSummary(Landroid/service/settings/suggestions/Suggestion$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmIcon(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmFlags(Landroid/service/settings/suggestions/Suggestion$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    invoke-static {p1}, Landroid/service/settings/suggestions/Suggestion$Builder;->-$$Nest$fgetmPendingIntent(Landroid/service/settings/suggestions/Suggestion$Builder;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/suggestions/Suggestion$Builder;Landroid/service/settings/suggestions/Suggestion-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/settings/suggestions/Suggestion;-><init>(Landroid/service/settings/suggestions/Suggestion$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPendingIntent()Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/service/settings/suggestions/Suggestion;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/settings/suggestions/Suggestion;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
