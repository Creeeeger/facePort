.class Landroid/app/admin/PolicyState$1;
.super Ljava/lang/Object;
.source "PolicyState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PolicyState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/PolicyState<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PolicyState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/app/admin/PolicyState<",
            "*>;"
        }
    .end annotation

    new-instance v0, Landroid/app/admin/PolicyState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/admin/PolicyState;-><init>(Landroid/os/Parcel;Landroid/app/admin/PolicyState-IA;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Landroid/app/admin/PolicyState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/PolicyState;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/PolicyState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/app/admin/PolicyState<",
            "*>;"
        }
    .end annotation

    new-array v0, p1, [Landroid/app/admin/PolicyState;

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

    invoke-virtual {p0, p1}, Landroid/app/admin/PolicyState$1;->newArray(I)[Landroid/app/admin/PolicyState;

    move-result-object p1

    return-object p1
.end method
