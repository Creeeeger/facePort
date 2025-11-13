.class public Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextPhoneStatusMonitor.java"


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PROXIMITY_CLOSE:I = 0x2

.field public static final whitelist PROXIMITY_NONE:I = 0x0

.field public static final whitelist PROXIMITY_OPEN:I = 0x1

.field public static final whitelist SCREEN_DOWN:I = 0x4

.field public static final blacklist SCREEN_NONE:I = 0x0

.field public static final whitelist SCREEN_PERFECT_DOWN:I = 0x5

.field public static final whitelist SCREEN_PERFECT_UP:I = 0x1

.field public static final whitelist SCREEN_TILT:I = 0x3

.field public static final whitelist SCREEN_UP:I = 0x2


# instance fields
.field private blacklist mContext:Landroid/os/Bundle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 192
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 193
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 274
    return-void
.end method


# virtual methods
.method public whitelist getProximity()I
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "embower"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getScreenDirection()I
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcddirect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getTimeStamp()J
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "timestamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist isInClosedSpace()Z
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "lcdOffRecommend"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .line 249
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    .line 250
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 263
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextPhoneStatusMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 264
    return-void
.end method
