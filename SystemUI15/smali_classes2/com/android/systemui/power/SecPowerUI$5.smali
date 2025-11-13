.class public final Lcom/android/systemui/power/SecPowerUI$5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/SecPowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI$5;->this$0:Lcom/android/systemui/power/SecPowerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI$5;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/power/DozeChargingHelper;->restoreDisplayStateWhenDozeCharging()V

    return-void
.end method
