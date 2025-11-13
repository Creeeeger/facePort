.class public final Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget$CREATOR;


# instance fields
.field public final launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

.field public final taskId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget$CREATOR;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->CREATOR:Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityOptions$LaunchCookie;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iput p2, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-static {p1}, Landroid/app/ActivityOptions$LaunchCookie;->readFromParcel(Landroid/os/Parcel;)Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;-><init>(Landroid/app/ActivityOptions$LaunchCookie;I)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iget-object v3, p1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    iget p1, p1, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActivityOptions$LaunchCookie;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    iget p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaProjectionCaptureTarget(launchCookie="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", taskId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->launchCookie:Landroid/app/ActivityOptions$LaunchCookie;

    invoke-static {p2, p1}, Landroid/app/ActivityOptions$LaunchCookie;->writeToParcel(Landroid/app/ActivityOptions$LaunchCookie;Landroid/os/Parcel;)V

    iget p0, p0, Lcom/android/systemui/mediaprojection/MediaProjectionCaptureTarget;->taskId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
