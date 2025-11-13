.class Landroid/service/controls/ControlsProviderInfo$1;
.super Ljava/lang/Object;
.source "ControlsProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/controls/ControlsProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/controls/ControlsProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/ControlsProviderInfo;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    new-instance v0, Landroid/service/controls/ControlsProviderInfo;

    invoke-direct {v0, p1}, Landroid/service/controls/ControlsProviderInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Landroid/service/controls/ControlsProviderInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/controls/ControlsProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/controls/ControlsProviderInfo;
    .locals 1
    .param p1, "size"    # I

    .line 79
    new-array v0, p1, [Landroid/service/controls/ControlsProviderInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 71
    invoke-virtual {p0, p1}, Landroid/service/controls/ControlsProviderInfo$1;->newArray(I)[Landroid/service/controls/ControlsProviderInfo;

    move-result-object p1

    return-object p1
.end method
