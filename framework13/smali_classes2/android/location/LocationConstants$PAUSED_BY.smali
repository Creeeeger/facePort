.class public final enum Landroid/location/LocationConstants$PAUSED_BY;
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
    name = "PAUSED_BY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/location/LocationConstants$PAUSED_BY;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist BACKGROUND:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationConstants$PAUSED_BY;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum blacklist FOREGROUND:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum blacklist UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 15

    .line 111
    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "APP_OPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v1, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v3, "FREEZE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v3, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v5, "PERMISSION_NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v5, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v7, "PERMISSION_CHECK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v7, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v9, "FOREGROUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v7, Landroid/location/LocationConstants$PAUSED_BY;->FOREGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v9, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v11, "BACKGROUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v9, Landroid/location/LocationConstants$PAUSED_BY;->BACKGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v11, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v13, "UNKNOWN"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v11, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    .line 110
    const/4 v13, 0x7

    new-array v13, v13, [Landroid/location/LocationConstants$PAUSED_BY;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Landroid/location/LocationConstants$PAUSED_BY;->$VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

    .line 123
    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY$1;

    invoke-direct {v0}, Landroid/location/LocationConstants$PAUSED_BY$1;-><init>()V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/location/LocationConstants$PAUSED_BY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Landroid/location/LocationConstants$PAUSED_BY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/location/LocationConstants$PAUSED_BY;

    return-object v0
.end method

.method public static blacklist values()[Landroid/location/LocationConstants$PAUSED_BY;
    .locals 1

    .line 110
    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->$VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

    invoke-virtual {v0}, [Landroid/location/LocationConstants$PAUSED_BY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationConstants$PAUSED_BY;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    invoke-virtual {p0}, Landroid/location/LocationConstants$PAUSED_BY;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method
