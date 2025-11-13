.class public final Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final logBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p3, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    return-void
.end method


# virtual methods
.method public final create()Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;
    .locals 6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->resources:Landroid/content/res/Resources;

    new-instance v3, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;

    const-string v4, "FaceHelpMessageDeferral["

    const-string v5, "]"

    invoke-static {v4, v0, v5}, Landroidx/compose/foundation/gestures/ContentInViewNode$Request$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    invoke-direct {v3, v5, v4}, Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;-><init>(Lcom/android/systemui/log/LogBuffer;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;-><init>(Landroid/content/res/Resources;Lcom/android/keyguard/logging/BiometricMessageDeferralLogger;Lcom/android/systemui/dump/DumpManager;Ljava/lang/String;)V

    return-object v1
.end method
