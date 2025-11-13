.class public Lcom/samsung/android/vibrator/VibrationDebugInfo;
.super Ljava/lang/Object;
.source "VibrationDebugInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CHANGE_SEP_INDEX_DURATION:I = 0x2

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/vibrator/VibrationDebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FAIL:Ljava/lang/String; = "fail"

.field public static final blacklist GET_DEVICE_INFORMATION:I = 0x0

.field public static final blacklist RESET_INDEX:I = 0x3

.field public static final blacklist SET_SEP_INDEX:I = 0x1

.field public static final blacklist SUCCESS:Ljava/lang/String; = "success"


# instance fields
.field private blacklist command:I

.field private blacklist duration:I

.field private blacklist index:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/vibrator/VibrationDebugInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/vibrator/VibrationDebugInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->command:I

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->command:I

    iput p2, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->index:I

    iput p3, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->duration:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->command:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->index:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->duration:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getCommand()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->command:I

    return v0
.end method

.method public blacklist getDuration()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->duration:I

    return v0
.end method

.method public blacklist getIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->index:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->command:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/vibrator/VibrationDebugInfo;->duration:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
