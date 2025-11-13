.class public final Landroid/service/voice/HotwordDetectionServiceFailure;
.super Ljava/lang/Object;
.source "HotwordDetectionServiceFailure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/HotwordDetectionServiceFailure$HotwordDetectionServiceErrorCode;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/HotwordDetectionServiceFailure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ERROR_CODE_BINDING_DIED:I = 0x2

.field public static final whitelist ERROR_CODE_BIND_FAILURE:I = 0x1

.field public static final whitelist ERROR_CODE_COPY_AUDIO_DATA_FAILURE:I = 0x3

.field public static final whitelist ERROR_CODE_DETECT_TIMEOUT:I = 0x4

.field public static final whitelist ERROR_CODE_ON_DETECTED_SECURITY_EXCEPTION:I = 0x5

.field public static final whitelist ERROR_CODE_ON_DETECTED_STREAM_COPY_FAILURE:I = 0x6

.field public static final whitelist ERROR_CODE_REMOTE_EXCEPTION:I = 0x7

.field public static final blacklist ERROR_CODE_SHUTDOWN_HDS_ON_VOICE_ACTIVATION_OP_DISABLED:I = 0xa

.field public static final whitelist ERROR_CODE_UNKNOWN:I


# instance fields
.field private blacklist mErrorCode:I

.field private blacklist mErrorMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/HotwordDetectionServiceFailure$1;

    invoke-direct {v0}, Landroid/service/voice/HotwordDetectionServiceFailure$1;-><init>()V

    sput-object v0, Landroid/service/voice/HotwordDetectionServiceFailure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    const-string v0, "Unknown"

    iput-object v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    iput-object p2, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorMessage is empty or null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getErrorCode()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    return v0
.end method

.method public whitelist getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestedAction()I
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x4

    return v0

    :pswitch_2
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HotwordDetectionServiceFailure { errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/voice/HotwordDetectionServiceFailure;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
