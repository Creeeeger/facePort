.class Landroid/service/timezone/TimeZoneProviderEvent$1;
.super Ljava/lang/Object;
.source "TimeZoneProviderEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/timezone/TimeZoneProviderEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/timezone/TimeZoneProviderEvent;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 16

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/service/timezone/TimeZoneProviderSuggestion;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v13

    nop

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/service/timezone/TimeZoneProviderStatus;

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/service/timezone/TimeZoneProviderStatus;

    new-instance v15, Landroid/service/timezone/TimeZoneProviderEvent;

    const/4 v8, 0x0

    move-object v1, v15

    move v2, v9

    move-wide v3, v10

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-direct/range {v1 .. v8}, Landroid/service/timezone/TimeZoneProviderEvent;-><init>(IJLandroid/service/timezone/TimeZoneProviderSuggestion;Ljava/lang/String;Landroid/service/timezone/TimeZoneProviderStatus;Landroid/service/timezone/TimeZoneProviderEvent-IA;)V

    return-object v15
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

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;
    .locals 1

    new-array v0, p1, [Landroid/service/timezone/TimeZoneProviderEvent;

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

    invoke-virtual {p0, p1}, Landroid/service/timezone/TimeZoneProviderEvent$1;->newArray(I)[Landroid/service/timezone/TimeZoneProviderEvent;

    move-result-object p1

    return-object p1
.end method
