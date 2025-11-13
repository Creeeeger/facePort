.class public final Landroid/os/BatteryConsumer$Dimensions;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dimensions"
.end annotation


# instance fields
.field public final blacklist powerComponent:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method public constructor blacklist <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/os/BatteryConsumer$Dimensions;-><init>(IIII)V

    return-void
.end method

.method public constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    iput p2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    iput p3, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    iput p4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const-string/jumbo v2, "powerComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerComponentNames()[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->powerComponent:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_0
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    const-string v3, ", "

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v2, "processState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsProcessStateNames()[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Landroid/os/BatteryConsumer$Dimensions;->processState:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_2
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v2, "screenState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/os/BatteryConsumer$Dimensions;->screenState:I

    invoke-static {v4}, Landroid/os/BatteryConsumer;->screenStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_4
    iget v2, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    if-eqz v2, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string/jumbo v2, "powerState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/BatteryConsumer$Dimensions;->powerState:I

    invoke-static {v3}, Landroid/os/BatteryConsumer;->powerStateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :cond_6
    if-nez v0, :cond_7

    const-string v2, "any components and process states"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
