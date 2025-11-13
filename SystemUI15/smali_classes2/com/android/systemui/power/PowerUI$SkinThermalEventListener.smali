.class final Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;
.super Landroid/os/IThermalEventListener$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifyThrottling(Landroid/os/Temperature;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean p1, p0, Lcom/android/systemui/power/PowerUI;->mInVrMode:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;->this$0:Lcom/android/systemui/power/PowerUI;

    sget-boolean p1, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v1
.end method
