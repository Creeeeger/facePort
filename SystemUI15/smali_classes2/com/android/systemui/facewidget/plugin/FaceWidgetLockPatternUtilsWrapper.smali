.class public final Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/plugins/keyguardstatusview/PluginLockPatternUtils;


# instance fields
.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public final getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getOwnerInfo(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getOwnerInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isDeviceOwnerInfoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDeviceOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method

.method public final isOwnerInfoEnabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetLockPatternUtilsWrapper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isOwnerInfoEnabled()Z

    move-result p0

    return p0
.end method
