.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityNotificationForLocation.java"


# static fields
.field public static final blacklist ACCURACY_HIGH:I = 0x2

.field public static final blacklist ACCURACY_LOW:I = 0x0

.field public static final blacklist ACCURACY_MID:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATUS_CYCLE:I = 0x5

.field public static final blacklist STATUS_MOVEMENT:I = 0x1e

.field public static final blacklist STATUS_RUN:I = 0x3

.field public static final blacklist STATUS_STATIONARY:I = 0x1

.field public static final blacklist STATUS_UNKNOWN:I = 0x0

.field public static final blacklist STATUS_VEHICLE:I = 0x4

.field public static final blacklist STATUS_WALK:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 181
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 204
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 212
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 213
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->readFromParcel(Landroid/os/Parcel;)V

    .line 214
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 282
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    .line 283
    return-void
.end method


# virtual methods
.method public blacklist getAccuracy()I
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getStatus()I
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 258
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    .line 259
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 272
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationForLocation;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 273
    return-void
.end method
