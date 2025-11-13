.class Landroid/telephony/SignalBarInfo$1;
.super Ljava/lang/Object;
.source "SignalBarInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SignalBarInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalBarInfo;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 212
    new-instance v0, Landroid/telephony/SignalBarInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/SignalBarInfo;-><init>(Landroid/os/Parcel;Landroid/telephony/SignalBarInfo-IA;)V

    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroid/telephony/SignalBarInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/SignalBarInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/SignalBarInfo;
    .locals 1
    .param p1, "size"    # I

    .line 216
    new-array v0, p1, [Landroid/telephony/SignalBarInfo;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroid/telephony/SignalBarInfo$1;->newArray(I)[Landroid/telephony/SignalBarInfo;

    move-result-object p1

    return-object p1
.end method
