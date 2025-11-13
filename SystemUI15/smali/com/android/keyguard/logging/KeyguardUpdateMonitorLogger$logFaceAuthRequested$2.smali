.class final Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;
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


# static fields
.field public static final INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;

    invoke-direct {v0}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;->INSTANCE:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$logFaceAuthRequested$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getStr1()Ljava/lang/String;

    move-result-object p0

    const-string p1, "requestFaceAuth() reason="

    invoke-static {p1, p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
