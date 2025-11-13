.class final Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;
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
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/log/core/LogMessage;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt1()I

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "(missing)"

    const/16 v2, -0xb

    if-ne v1, v2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerLogger$logBatteryChangedIntent$2;->this$0:Lcom/android/systemui/statusbar/policy/BatteryControllerLogger;

    invoke-interface {p1}, Lcom/android/systemui/log/core/LogMessage;->getInt2()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string p0, "Processing BATTERY_CHANGED intent. level="

    const-string p1, " scale="

    invoke-static {p0, v1, p1, v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
