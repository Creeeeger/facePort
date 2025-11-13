.class public Lcom/samsung/android/knox/license/LicenseResult;
.super Ljava/lang/Object;
.source "LicenseResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/license/LicenseResult$Type;,
        Lcom/samsung/android/knox/license/LicenseResult$Status;
    }
.end annotation


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

    .line 116
    new-instance v0, Lcom/samsung/android/knox/license/LicenseResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/license/LicenseResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/license/LicenseResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/license/LicenseResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/license/LicenseResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Status;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/license/LicenseResult$Type;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 135
    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->status:Lcom/samsung/android/knox/license/LicenseResult$Status;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->type:Lcom/samsung/android/knox/license/LicenseResult$Type;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/knox/license/LicenseResult;->grantedPermissions:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 140
    iget-object p0, p0, Lcom/samsung/android/knox/license/LicenseResult;->licenseKey:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
