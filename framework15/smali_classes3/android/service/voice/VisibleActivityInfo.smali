.class public final Landroid/service/voice/VisibleActivityInfo;
.super Ljava/lang/Object;
.source "VisibleActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisibleActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_ACTIVITY_ADDED:I = 0x1

.field public static final blacklist TYPE_ACTIVITY_REMOVED:I = 0x2


# instance fields
.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/VisibleActivityInfo$1;

    invoke-direct {v0}, Landroid/service/voice/VisibleActivityInfo$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisibleActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput p1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iput-object p2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    iput v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iput-object v1, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    const-class v2, Landroid/annotation/NonNull;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/service/voice/VisibleActivityInfo;

    iget v3, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget v4, v2, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getActivityId()Landroid/service/voice/VoiceInteractionSession$ActivityId;
    .locals 3

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    iget-object v2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-direct {v0, v1, v2}, Landroid/service/voice/VoiceInteractionSession$ActivityId;-><init>(ILandroid/os/IBinder;)V

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x1

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisibleActivityInfo { taskId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", assistToken = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    iget v0, p0, Landroid/service/voice/VisibleActivityInfo;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/voice/VisibleActivityInfo;->mAssistToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
