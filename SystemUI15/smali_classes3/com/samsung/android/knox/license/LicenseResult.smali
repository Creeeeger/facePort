.class public Lcom/samsung/android/knox/license/LicenseResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/license/LicenseResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private errorCode:I

.field private grantedPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseKey:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private status:Lcom/samsung/android/knox/license/LicenseResult$Status;

.field private type:Lcom/samsung/android/knox/license/LicenseResult$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/LicenseResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Status;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/knox/license/LicenseResult$Status;",
            "I",
            "Lcom/samsung/android/knox/license/LicenseResult$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    iput-object p4, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    iput p3, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    iput-object p5, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    iput-object p6, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/samsung/android/knox/license/LicenseResult$Type;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/knox/license/LicenseResult$Status;->fromStatusString(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult$Status;ILcom/samsung/android/knox/license/LicenseResult$Type;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    return p0
.end method

.method public getGrantedPermissions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getLicenseKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/samsung/android/knox/license/LicenseResult$Type;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    return-object p0
.end method

.method public isActivation()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_ACTIVATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSuccess()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    sget-object v0, Lcom/samsung/android/knox/license/LicenseResult$Status;->SUCCESS:Lcom/samsung/android/knox/license/LicenseResult$Status;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Status;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Type;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
