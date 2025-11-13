.class public Landroid/app/CameraCompatTaskInfo;
.super Ljava/lang/Object;
.source "CameraCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/CameraCompatTaskInfo$FreeformCameraCompatMode;
    }
.end annotation


# static fields
.field public static final blacklist CAMERA_COMPAT_FREEFORM_LANDSCAPE:I = 0x2

.field public static final blacklist CAMERA_COMPAT_FREEFORM_NONE:I = 0x0

.field public static final blacklist CAMERA_COMPAT_FREEFORM_PORTRAIT:I = 0x1

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/CameraCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist freeformCameraCompatMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/CameraCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/CameraCompatTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/CameraCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/CameraCompatTaskInfo;
    .locals 1

    new-instance v0, Landroid/app/CameraCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/CameraCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method public static blacklist freeformCameraCompatModeToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected camera compat mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "landscape"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "portrait"

    goto :goto_0

    :pswitch_2
    const-string v0, "inactive"

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    iget v2, p1, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraCompatTaskInfo { freeformCameraCompatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-static {v1}, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/CameraCompatTaskInfo;->freeformCameraCompatMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
