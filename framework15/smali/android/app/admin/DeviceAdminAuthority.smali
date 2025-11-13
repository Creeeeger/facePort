.class public final Landroid/app/admin/DeviceAdminAuthority;
.super Landroid/app/admin/Authority;
.source "DeviceAdminAuthority.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/DeviceAdminAuthority;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/DeviceAdminAuthority;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminAuthority;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminAuthority;->DEVICE_ADMIN_AUTHORITY:Landroid/app/admin/DeviceAdminAuthority;

    new-instance v0, Landroid/app/admin/DeviceAdminAuthority$1;

    invoke-direct {v0}, Landroid/app/admin/DeviceAdminAuthority$1;-><init>()V

    sput-object v0, Landroid/app/admin/DeviceAdminAuthority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/admin/Authority;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DeviceAdminAuthority {}"

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
