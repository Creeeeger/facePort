.class public final Landroid/app/RemoteLockscreenValidationResult;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RemoteLockscreenValidationResult$Builder;,
        Landroid/app/RemoteLockscreenValidationResult$ResultCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RemoteLockscreenValidationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist RESULT_GUESS_INVALID:I = 0x2

.field public static final whitelist RESULT_GUESS_VALID:I = 0x1

.field public static final whitelist RESULT_LOCKOUT:I = 0x3

.field public static final whitelist RESULT_NO_REMAINING_ATTEMPTS:I = 0x4

.field public static final whitelist RESULT_SESSION_EXPIRED:I = 0x5


# instance fields
.field private blacklist mResultCode:I

.field private blacklist mTimeoutMillis:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResultCode(Landroid/app/RemoteLockscreenValidationResult;)I
    .locals 0

    iget p0, p0, Landroid/app/RemoteLockscreenValidationResult;->mResultCode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResultCode(Landroid/app/RemoteLockscreenValidationResult;I)V
    .locals 0

    iput p1, p0, Landroid/app/RemoteLockscreenValidationResult;->mResultCode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeoutMillis(Landroid/app/RemoteLockscreenValidationResult;J)V
    .locals 0

    iput-wide p1, p0, Landroid/app/RemoteLockscreenValidationResult;->mTimeoutMillis:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/RemoteLockscreenValidationResult$1;

    invoke-direct {v0}, Landroid/app/RemoteLockscreenValidationResult$1;-><init>()V

    sput-object v0, Landroid/app/RemoteLockscreenValidationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/RemoteLockscreenValidationResult-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/RemoteLockscreenValidationResult;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mResultCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mTimeoutMillis:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/RemoteLockscreenValidationResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/RemoteLockscreenValidationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getResultCode()I
    .locals 1

    iget v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mResultCode:I

    return v0
.end method

.method public whitelist getTimeoutMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mResultCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/app/RemoteLockscreenValidationResult;->mTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
