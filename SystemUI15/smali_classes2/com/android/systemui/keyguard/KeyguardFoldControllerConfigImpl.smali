.class public final Lcom/android/systemui/keyguard/KeyguardFoldControllerConfigImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/KeyguardFoldControllerConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDebug()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result p0

    sget v0, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-eq p0, v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isShipBuild()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
