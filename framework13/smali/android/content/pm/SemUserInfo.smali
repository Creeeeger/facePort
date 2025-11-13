.class public Landroid/content/pm/SemUserInfo;
.super Ljava/lang/Object;
.source "SemUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SemUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_BMODE:I = 0x10000


# instance fields
.field public blacklist flags:I

.field public blacklist id:I

.field public blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 94
    new-instance v0, Landroid/content/pm/SemUserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SemUserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SemUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/UserInfo;)V
    .locals 2
    .param p1, "ui"    # Landroid/content/pm/UserInfo;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Landroid/content/pm/SemUserInfo;->id:I

    .line 45
    iget-object v0, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    .line 46
    iget v0, p1, Landroid/content/pm/UserInfo;->flags:I

    iput v0, p0, Landroid/content/pm/SemUserInfo;->flags:I

    .line 51
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserInfo is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemUserInfo;->id:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SemUserInfo;->flags:I

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SemUserInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/SemUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 2

    .line 57
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Landroid/content/pm/SemUserInfo;->id:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public whitelist isSecondNumberMode()Z
    .locals 2

    .line 64
    iget v0, p0, Landroid/content/pm/SemUserInfo;->flags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemUserInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/SemUserInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/SemUserInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 71
    iget v0, p0, Landroid/content/pm/SemUserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Landroid/content/pm/SemUserInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Landroid/content/pm/SemUserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
