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

    .line 101
    new-instance v0, Landroid/content/pm/SemSuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SemSuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SemSuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/SemSuspendDialogInfo$Builder;)V
    .locals 1
    .param p1, "b"    # Landroid/content/pm/SemSuspendDialogInfo$Builder;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    .line 124
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    .line 125
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessage(Landroid/content/pm/SemSuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Landroid/content/pm/SemSuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SemSuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 127
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 119
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

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getDialogMessage()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getDialogMessageResId()I
    .locals 1

    .line 70
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method blacklist getNeutralButtonTextResId()I
    .locals 1

    .line 82
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method blacklist getTitleResId()I
    .locals 1

    .line 64
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 94
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget v0, p0, Landroid/content/pm/SemSuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
