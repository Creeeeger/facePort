.class public final Lcom/android/systemui/screenshot/ScreenshotSavedResult;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final imageTime:J

.field public final subject:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/screenshot/ScreenshotSavedResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotSavedResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/os/UserHandle;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    iput-wide p3, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->imageTime:J

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object p1

    new-instance p2, Ljava/util/Date;

    invoke-direct {p2, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    sget p2, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    const/4 p2, 0x1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Screenshot (%s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->subject:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->imageTime:J

    iget-wide p0, p1, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->imageTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->imageTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->user:Landroid/os/UserHandle;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ScreenshotSavedResult(uri="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", user="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", imageTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/screenshot/ScreenshotSavedResult;->imageTime:J

    const-string p0, ")"

    invoke-static {v0, v1, p0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
