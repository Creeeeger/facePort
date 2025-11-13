.class public final Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDuration:I

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsDirty:Z

.field public final mKey:Ljava/lang/String;

.field public final mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

.field public final mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

.field public final mPackageName:Ljava/lang/String;

.field public mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p6, 0xfa0

    iput p6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    const/4 p6, 0x1

    iput-boolean p6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iput p5, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    iput-object p4, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    new-instance p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    new-instance p2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;

    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    new-instance p3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;

    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    new-instance p4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;

    invoke-direct {p4, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    iput-object p3, p4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    return-void
.end method


# virtual methods
.method public final getContentIntent()Landroid/app/PendingIntent;
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "content_intent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v1, p0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    add-int/lit16 p0, p0, -0x3e8

    return p0

    :cond_0
    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    return p0
.end method

.method public final getNotiText()[Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightingScheduleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNotificationID()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getNotificationKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "noti_key"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getNotificationTag()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_tag"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUserId()I
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "user_id"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getVisibility()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/16 v0, -0x3e8

    if-eqz p0, :cond_0

    const-string v1, "noti_visiblity"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public final setDuration(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setDuration : duration="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightingScheduleInfo"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    return-void
.end method
