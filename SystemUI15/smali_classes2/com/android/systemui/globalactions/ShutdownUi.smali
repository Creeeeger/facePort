.class public final Lcom/android/systemui/globalactions/ShutdownUi;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

.field public final mContext:Landroid/content/Context;

.field public final mNearbyManager:Landroid/nearby/NearbyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/BlurUtils;Landroid/nearby/NearbyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mBlurUtils:Lcom/android/systemui/statusbar/BlurUtils;

    iput-object p3, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mNearbyManager:Landroid/nearby/NearbyManager;

    return-void
.end method


# virtual methods
.method public getReasonMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "recovery-update"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    const p1, 0x1040c69

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "recovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mContext:Landroid/content/Context;

    const p1, 0x1040c65

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRebootMessage(ZLjava/lang/String;)I
    .locals 1

    if-eqz p2, :cond_0

    const-string p0, "recovery-update"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x1040c68

    return p0

    :cond_0
    const p0, 0x1040c64

    if-eqz p2, :cond_1

    const-string v0, "recovery"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    return p0

    :cond_2
    const p0, 0x1040e6d

    return p0
.end method

.method public getShutdownDialogContent(Z)I
    .locals 2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/platform/flags/Flags;->poweredOffFindingPlatform()Z

    move-result v0

    const v1, 0x109018b

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/ShutdownUi;->mNearbyManager:Landroid/nearby/NearbyManager;

    invoke-virtual {p0}, Landroid/nearby/NearbyManager;->getPoweredOffFindingMode()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const v1, 0x7f0d043b

    :goto_0
    return v1

    :cond_3
    const-string p1, "Unexpected value for finder active: "

    const-string v0, "ShutdownUi"

    invoke-static {p0, p1, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return v1
.end method
