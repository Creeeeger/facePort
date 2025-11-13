.class Landroid/app/admin/ManagedSubscriptionsPolicy$1;
.super Ljava/lang/Object;
.source "ManagedSubscriptionsPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/ManagedSubscriptionsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/app/admin/ManagedSubscriptionsPolicy;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedSubscriptionsPolicy;
    .locals 2

    new-instance v0, Landroid/app/admin/ManagedSubscriptionsPolicy;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/app/admin/ManagedSubscriptionsPolicy;-><init>(I)V

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

    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/app/admin/ManagedSubscriptionsPolicy;
    .locals 1

    new-array v0, p1, [Landroid/app/admin/ManagedSubscriptionsPolicy;

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

    invoke-virtual {p0, p1}, Landroid/app/admin/ManagedSubscriptionsPolicy$1;->newArray(I)[Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p1

    return-object p1
.end method
