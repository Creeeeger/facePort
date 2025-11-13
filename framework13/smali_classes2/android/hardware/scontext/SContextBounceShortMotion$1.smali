.class Landroid/hardware/scontext/SContextBounceShortMotion$1;
.super Ljava/lang/Object;
.source "SContextBounceShortMotion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/scontext/SContextBounceShortMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/scontext/SContextBounceShortMotion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextBounceShortMotion;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    new-instance v0, Landroid/hardware/scontext/SContextBounceShortMotion;

    invoke-direct {v0, p1}, Landroid/hardware/scontext/SContextBounceShortMotion;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextBounceShortMotion$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/scontext/SContextBounceShortMotion;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/hardware/scontext/SContextBounceShortMotion;
    .locals 1
    .param p1, "size"    # I

    .line 163
    new-array v0, p1, [Landroid/hardware/scontext/SContextBounceShortMotion;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 154
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextBounceShortMotion$1;->newArray(I)[Landroid/hardware/scontext/SContextBounceShortMotion;

    move-result-object p1

    return-object p1
.end method
