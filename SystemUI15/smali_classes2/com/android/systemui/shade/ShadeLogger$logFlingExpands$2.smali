.class final Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;
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
.field public static final INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;

    invoke-direct {v0}, Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;-><init>()V

    sput-object v0, Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logFlingExpands$2;

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
    .locals 9

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong1()J

    move-result-wide v0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getLong2()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result p0

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getDouble1()D

    move-result-wide v4

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool1()Z

    move-result v6

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getBool2()Z

    move-result p1

    const-string v7, "NPVC flingExpands called with vel: "

    const-string v8, ", vectorVel: "

    invoke-static {v7, v0, v1, v8}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", interactionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", minVelocityPxPerSecond: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " expansionOverHalf: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", allowExpandForSmallExpansion: "

    invoke-static {v0, v6, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
