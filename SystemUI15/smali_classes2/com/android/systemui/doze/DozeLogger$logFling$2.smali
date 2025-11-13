.class final Lcom/android/systemui/doze/DozeLogger$logFling$2;
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
.field public static final INSTANCE:Lcom/android/systemui/doze/DozeLogger$logFling$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/DozeLogger$logFling$2;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeLogger$logFling$2;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/DozeLogger$logFling$2;->INSTANCE:Lcom/android/systemui/doze/DozeLogger$logFling$2;

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
    .locals 5

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool3()Z

    move-result v1

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool4()Z

    move-result p1

    const-string v2, "Fling expand="

    const-string v3, " aboveThreshold="

    const-string v4, " thresholdNeeded="

    invoke-static {v2, v3, v4, p0, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " screenOnFromTouch="

    invoke-static {p0, v1, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
