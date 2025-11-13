.class final Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;
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
.field final synthetic this$0:Lcom/android/keyguard/logging/KeyguardLogger;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/logging/KeyguardLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;->this$0:Lcom/android/keyguard/logging/KeyguardLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    iget-object p0, p0, Lcom/android/keyguard/logging/KeyguardLogger$logKeyguardSwitchIndication$2;->this$0:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x3

    const-string/jumbo v1, "type="

    if-ne v0, p0, :cond_0

    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->indicationTypeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, " message="

    invoke-static {v1, p0, v0, p1}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->indicationTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "keyguardSwitchIndication "

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
