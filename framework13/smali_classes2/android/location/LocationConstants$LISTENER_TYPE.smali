.class public final enum Landroid/location/LocationConstants$LISTENER_TYPE;
.super Ljava/lang/Enum;
.source "LocationConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LISTENER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/location/LocationConstants$LISTENER_TYPE;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationConstants$LISTENER_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final enum blacklist GNSS_MEASUREMENT:Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final enum blacklist GNSS_NAVIGATION_MESSAGE:Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final enum blacklist GNSS_STATUS:Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final enum blacklist LOCATION:Landroid/location/LocationConstants$LISTENER_TYPE;

.field public static final enum blacklist NMEA:Landroid/location/LocationConstants$LISTENER_TYPE;


# instance fields
.field private final blacklist dbCategoryAllowlist:Ljava/lang/String;

.field private final blacklist isPassiveType:Z

.field private blacklist maxListenerIdThreshold:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 14

    .line 140
    new-instance v0, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v1, "LOCATION"

    const/4 v2, 0x0

    const-string v3, "LISTENER"

    invoke-direct {v0, v1, v2, v3, v2}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->LOCATION:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 141
    new-instance v1, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v3, "NMEA"

    const/4 v4, 0x1

    const-string v5, "LISTENER_NMEA"

    invoke-direct {v1, v3, v4, v5, v4}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v1, Landroid/location/LocationConstants$LISTENER_TYPE;->NMEA:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 142
    new-instance v3, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v5, "GNSS_STATUS"

    const/4 v6, 0x2

    const-string v7, "LISTENER_STATUS"

    invoke-direct {v3, v5, v6, v7, v4}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v3, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_STATUS:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 144
    new-instance v5, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v7, "GNSS_ANTENNA_INFO"

    const/4 v8, 0x3

    const-string v9, "LISTENER_ANTENNA_INFO"

    invoke-direct {v5, v7, v8, v9, v2}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v5, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_ANTENNA_INFO:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 145
    new-instance v7, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v9, "GNSS_MEASUREMENT"

    const/4 v10, 0x4

    const-string v11, "LISTENER_MEASUREMENT"

    invoke-direct {v7, v9, v10, v11, v2}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v7, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_MEASUREMENT:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 146
    new-instance v9, Landroid/location/LocationConstants$LISTENER_TYPE;

    const-string v11, "GNSS_NAVIGATION_MESSAGE"

    const/4 v12, 0x5

    const-string v13, "LISTENER_NAVIGATION"

    invoke-direct {v9, v11, v12, v13, v2}, Landroid/location/LocationConstants$LISTENER_TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v9, Landroid/location/LocationConstants$LISTENER_TYPE;->GNSS_NAVIGATION_MESSAGE:Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 139
    const/4 v11, 0x6

    new-array v11, v11, [Landroid/location/LocationConstants$LISTENER_TYPE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Landroid/location/LocationConstants$LISTENER_TYPE;->$VALUES:[Landroid/location/LocationConstants$LISTENER_TYPE;

    .line 184
    new-instance v0, Landroid/location/LocationConstants$LISTENER_TYPE$1;

    invoke-direct {v0}, Landroid/location/LocationConstants$LISTENER_TYPE$1;-><init>()V

    sput-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .param p3, "dbCategoryAllowlist"    # Ljava/lang/String;
    .param p4, "isPassiveType"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 153
    iput-object p3, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->dbCategoryAllowlist:Ljava/lang/String;

    .line 154
    const/16 p1, 0x1e

    iput p1, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->maxListenerIdThreshold:I

    .line 155
    iput-boolean p4, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->isPassiveType:Z

    .line 156
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    const-class v0, Landroid/location/LocationConstants$LISTENER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object v0
.end method

.method public static blacklist values()[Landroid/location/LocationConstants$LISTENER_TYPE;
    .locals 1

    .line 139
    sget-object v0, Landroid/location/LocationConstants$LISTENER_TYPE;->$VALUES:[Landroid/location/LocationConstants$LISTENER_TYPE;

    invoke-virtual {v0}, [Landroid/location/LocationConstants$LISTENER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationConstants$LISTENER_TYPE;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDbCategoryAllowlist()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->dbCategoryAllowlist:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMaxListenerIdThreshold()I
    .locals 1

    .line 167
    iget v0, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->maxListenerIdThreshold:I

    return v0
.end method

.method public blacklist isPassiveType()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->isPassiveType:Z

    return v0
.end method

.method public blacklist setMaxListenerIdThreshold(I)V
    .locals 0
    .param p1, "maxListenerIdThreshold"    # I

    .line 171
    iput p1, p0, Landroid/location/LocationConstants$LISTENER_TYPE;->maxListenerIdThreshold:I

    .line 172
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    invoke-virtual {p0}, Landroid/location/LocationConstants$LISTENER_TYPE;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    return-void
.end method
