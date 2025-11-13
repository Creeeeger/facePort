.class public Lcom/samsung/android/aod/AODToast;
.super Ljava/lang/Object;
.source "AODToast.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/aod/AODToast$Builder;,
        Lcom/samsung/android/aod/AODToast$Duration;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/aod/AODToast;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist LENGTH_LONG:I = 0x1

.field public static final blacklist LENGTH_SHORT:I


# instance fields
.field private blacklist mDuration:I

.field private blacklist mDurationMillis:J

.field private blacklist mGravity:I

.field private blacklist mHorizontalMargin:F

.field private blacklist mText:Ljava/lang/String;

.field private blacklist mToken:Landroid/os/IBinder;

.field private blacklist mVerticalMargin:F

.field private blacklist mX:I

.field private blacklist mY:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/samsung/android/aod/AODToast$1;

    invoke-direct {v0}, Lcom/samsung/android/aod/AODToast$1;-><init>()V

    sput-object v0, Lcom/samsung/android/aod/AODToast;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    .line 66
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/aod/AODToast-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AODToast;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/aod/AODToast$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/samsung/android/aod/AODToast$Builder;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    .line 46
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmText(Lcom/samsung/android/aod/AODToast$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmDuration(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    .line 48
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmDurationMillis(Lcom/samsung/android/aod/AODToast$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    .line 49
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmGravity(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    .line 50
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmX(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    .line 51
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmY(Lcom/samsung/android/aod/AODToast$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    .line 52
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmHorizontalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    .line 53
    invoke-static {p1}, Lcom/samsung/android/aod/AODToast$Builder;->-$$Nest$fgetmVerticalMargin(Lcom/samsung/android/aod/AODToast$Builder;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/aod/AODToast$Builder;Lcom/samsung/android/aod/AODToast-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AODToast;-><init>(Lcom/samsung/android/aod/AODToast$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDuratioinMillis()J
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    return-wide v0
.end method

.method public blacklist getDuration()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    return v0
.end method

.method public blacklist getGravity()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    return v0
.end method

.method public blacklist getHorizontalMargin()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    return v0
.end method

.method public blacklist getText()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getVerticalMargin()F
    .locals 1

    .line 102
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    return v0
.end method

.method public blacklist getXOffset()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    return v0
.end method

.method public blacklist getYOffset()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AODToast: text:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") duration:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") durationMillis:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") gravity:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") xOffset:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") yOffset:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") hMargin:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") vMargin:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 119
    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/aod/AODToast;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mDuration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast;->mDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 123
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mGravity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mHorizontalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 127
    iget v0, p0, Lcom/samsung/android/aod/AODToast;->mVerticalMargin:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 128
    return-void
.end method
