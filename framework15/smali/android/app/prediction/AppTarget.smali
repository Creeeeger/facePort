.class public final Landroid/app/prediction/AppTarget;
.super Ljava/lang/Object;
.source "AppTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/prediction/AppTarget$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/prediction/AppTarget;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mClassName:Ljava/lang/String;

.field private final blacklist mId:Landroid/app/prediction/AppTargetId;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mRank:I

.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/prediction/AppTarget$1;

    invoke-direct {v0}, Landroid/app/prediction/AppTarget$1;-><init>()V

    sput-object v0, Landroid/app/prediction/AppTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iput-object p4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p2, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iput p6, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;ILandroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/prediction/AppTarget;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/ShortcutInfo;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/app/prediction/AppTargetId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppTargetId;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/prediction/AppTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/prediction/AppTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/app/prediction/AppTarget;

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iget-object v4, v0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v4, :cond_5

    iget-object v4, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v4, :cond_7

    iget-object v4, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v5

    if-ne v4, v5, :cond_7

    :cond_6
    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {v5, v6}, Landroid/app/prediction/AppTargetId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_8

    iget-object v5, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    iget-object v6, v0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v4, :cond_8

    iget v5, p0, Landroid/app/prediction/AppTarget;->mRank:I

    iget v6, v0, Landroid/app/prediction/AppTarget;->mRank:I

    if-ne v5, v6, :cond_8

    move v1, v3

    goto :goto_3

    :cond_8
    nop

    :goto_3
    return v1
.end method

.method public whitelist getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getId()Landroid/app/prediction/AppTargetId;
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRank()I
    .locals 1

    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    return v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    :cond_0
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/app/prediction/AppTarget;->mRank:I

    add-int/2addr v1, v2

    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mId:Landroid/app/prediction/AppTargetId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget-object v0, p0, Landroid/app/prediction/AppTarget;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/prediction/AppTarget;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
