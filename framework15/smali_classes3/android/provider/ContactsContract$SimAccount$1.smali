.class Landroid/provider/ContactsContract$SimAccount$1;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$SimAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/provider/ContactsContract$SimAccount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/provider/ContactsContract$SimAccount;
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v4, Landroid/provider/ContactsContract$SimAccount;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/provider/ContactsContract$SimAccount;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v4
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/provider/ContactsContract$SimAccount$1;->createFromParcel(Landroid/os/Parcel;)Landroid/provider/ContactsContract$SimAccount;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/provider/ContactsContract$SimAccount;
    .locals 1

    new-array v0, p1, [Landroid/provider/ContactsContract$SimAccount;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/provider/ContactsContract$SimAccount$1;->newArray(I)[Landroid/provider/ContactsContract$SimAccount;

    move-result-object p1

    return-object p1
.end method
