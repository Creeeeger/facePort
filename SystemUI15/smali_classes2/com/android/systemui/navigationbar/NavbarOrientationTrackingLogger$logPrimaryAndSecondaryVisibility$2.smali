.class final Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger$logPrimaryAndSecondaryVisibility$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger$logPrimaryAndSecondaryVisibility$2;->this$0:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool3()Z

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger$logPrimaryAndSecondaryVisibility$2;->this$0:Lcom/android/systemui/navigationbar/NavbarOrientationTrackingLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v5, v4

    if-gez v5, :cond_0

    add-int/lit8 v5, v5, 0x4

    :cond_0
    const/4 p0, 0x1

    if-eq v5, p0, :cond_3

    const/4 p0, 0x2

    if-eq v5, p0, :cond_2

    const/4 p0, 0x3

    if-eq v5, p0, :cond_1

    const-string p0, "0"

    goto :goto_0

    :cond_1
    const-string p0, "270"

    goto :goto_0

    :cond_2
    const-string p0, "180"

    goto :goto_0

    :cond_3
    const-string p0, "90"

    :goto_0
    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result p1

    const-string v5, "Caller Method: "

    const-string v6, "\n\tNavbar Visible: "

    const-string v7, "\n\tImmersive Mode: "

    invoke-static {v5, v0, v6, v7, v1}, Lcom/android/keyguard/logging/CarrierTextManagerLogger$logCallbackSentFromUpdate$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tSecondary Handle Visible: "

    const-string v5, "\n\tDelta Rotation: "

    invoke-static {v0, v2, v1, v3, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, "\n\tStarting QuickSwitch Rotation: "

    const-string v2, "\n\tCurrent Rotation: "

    invoke-static {v0, p0, v1, v4, v2}, Landroidx/compose/runtime/ComposerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "\n"

    invoke-static {p1, p0, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
