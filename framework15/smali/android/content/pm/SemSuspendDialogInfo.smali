.class public final Landroid/content/pm/SemSuspendDialogInfo;
.super Ljava/lang/Object;
.source "SemSuspendDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SemSuspendDialogInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SemSuspendDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist ID_NULL:I


# instance fields
.field private final blacklist mDialogMessage:Ljava/lang/String;

.field private final blacklist mDialogMessageResId:I

.field private final blacklist mNeutralButtonTextResId:I

.field private final blacklist mTitleResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/SemSuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SemSuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SemSuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/SemSuspendDialogInfo$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessage(Landroid/content/pm/SemSuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SemSuspendDialogInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/SemSuspendDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method blacklist getDialogMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDialogMessageResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method blacklist getNeutralButtonTextResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method blacklist getTitleResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
