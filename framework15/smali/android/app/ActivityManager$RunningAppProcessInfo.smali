.class public Landroid/app/ActivityManager$RunningAppProcessInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RunningAppProcessInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$RunningAppProcessInfo$Importance;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o FLAG_CANT_SAVE_STATE:I = 0x1

.field public static final greylist-max-r FLAG_HAS_ACTIVITIES:I = 0x4

.field public static final greylist FLAG_HAS_SERVICES:I = 0x8

.field public static final greylist-max-r FLAG_PERSISTENT:I = 0x2

.field public static final whitelist IMPORTANCE_BACKGROUND:I = 0x190

.field public static final whitelist IMPORTANCE_CACHED:I = 0x190

.field public static final whitelist IMPORTANCE_CANT_SAVE_STATE:I = 0x15e

.field public static final greylist-max-r IMPORTANCE_CANT_SAVE_STATE_PRE_26:I = 0xaa

.field public static final whitelist IMPORTANCE_EMPTY:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_FOREGROUND:I = 0x64

.field public static final whitelist IMPORTANCE_FOREGROUND_SERVICE:I = 0x7d

.field public static final whitelist IMPORTANCE_GONE:I = 0x3e8

.field public static final whitelist IMPORTANCE_PERCEPTIBLE:I = 0xe6

.field public static final whitelist IMPORTANCE_PERCEPTIBLE_PRE_26:I = 0x82

.field public static final whitelist IMPORTANCE_SERVICE:I = 0x12c

.field public static final whitelist IMPORTANCE_TOP_SLEEPING:I = 0x145

.field public static final whitelist IMPORTANCE_TOP_SLEEPING_PRE_28:I = 0x96
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist IMPORTANCE_VISIBLE:I = 0xc8

.field public static final whitelist REASON_PROVIDER_IN_USE:I = 0x1

.field public static final whitelist REASON_SERVICE_IN_USE:I = 0x2

.field public static final whitelist REASON_UNKNOWN:I


# instance fields
.field public blacklist avgPss:J

.field public greylist flags:I

.field public whitelist importance:I

.field public whitelist importanceReasonCode:I

.field public whitelist importanceReasonComponent:Landroid/content/ComponentName;

.field public greylist-max-o importanceReasonImportance:I

.field public whitelist importanceReasonPid:I

.field public blacklist isFocused:Z

.field public blacklist isProtectedInPicked:Z

.field public blacklist lastActivityTime:J

.field public blacklist lastPss:J

.field public blacklist lastSwapPss:J

.field public whitelist lastTrimLevel:I

.field public whitelist lru:I

.field public blacklist maxPss:J

.field public blacklist minPss:J

.field public whitelist pid:I

.field public blacklist pkgDeps:[Ljava/lang/String;

.field public whitelist pkgList:[Ljava/lang/String;

.field public whitelist processName:Ljava/lang/String;

.field public greylist processState:I

.field public whitelist uid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$RunningAppProcessInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput p2, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput-object p3, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method public static greylist-max-o importanceToProcState(I)I
    .locals 2

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/16 v0, 0x14

    return v0

    :cond_0
    const/16 v0, 0x190

    if-lt p0, v0, :cond_1

    const/16 v0, 0xe

    return v0

    :cond_1
    const/16 v0, 0x15e

    if-lt p0, v0, :cond_2

    const/16 v0, 0xd

    return v0

    :cond_2
    const/16 v0, 0x145

    if-lt p0, v0, :cond_3

    const/16 v0, 0xc

    return v0

    :cond_3
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_4

    const/16 v0, 0xa

    return v0

    :cond_4
    const/16 v0, 0xe6

    if-lt p0, v0, :cond_5

    const/16 v0, 0x8

    return v0

    :cond_5
    const/16 v0, 0xc8

    const/4 v1, 0x6

    if-lt p0, v0, :cond_6

    return v1

    :cond_6
    const/16 v0, 0x96

    if-lt p0, v0, :cond_7

    return v1

    :cond_7
    const/16 v0, 0x7d

    if-lt p0, v0, :cond_8

    const/4 v0, 0x4

    return v0

    :cond_8
    const/4 v0, 0x2

    return v0
.end method

.method public static greylist-max-r procStateToImportance(I)I
    .locals 1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    const/16 v0, 0x3e8

    return v0

    :cond_0
    const/16 v0, 0xe

    if-lt p0, v0, :cond_1

    const/16 v0, 0x190

    return v0

    :cond_1
    const/16 v0, 0xd

    if-ne p0, v0, :cond_2

    const/16 v0, 0x15e

    return v0

    :cond_2
    const/16 v0, 0xc

    if-lt p0, v0, :cond_3

    const/16 v0, 0x145

    return v0

    :cond_3
    const/16 v0, 0xa

    if-lt p0, v0, :cond_4

    const/16 v0, 0x12c

    return v0

    :cond_4
    const/16 v0, 0x8

    if-lt p0, v0, :cond_5

    const/16 v0, 0xe6

    return v0

    :cond_5
    const/4 v0, 0x6

    if-lt p0, v0, :cond_6

    const/16 v0, 0xc8

    return v0

    :cond_6
    const/4 v0, 0x4

    if-lt p0, v0, :cond_7

    const/16 v0, 0x7d

    return v0

    :cond_7
    const/16 v0, 0x64

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForClient(ILandroid/content/Context;)I
    .locals 1

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {p0, v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o procStateToImportanceForTargetSdk(II)I
    .locals 2

    invoke-static {p0}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v0

    const/16 v1, 0x1a

    if-ge p1, v1, :cond_0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/16 v1, 0xaa

    return v1

    :sswitch_1
    const/16 v1, 0x96

    return v1

    :sswitch_2
    const/16 v1, 0x82

    return v1

    :cond_0
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_2
        0x145 -> :sswitch_1
        0x15e -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    return-void
.end method

.method public whitelist semGetProcessState()I
    .locals 1

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgDeps:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
