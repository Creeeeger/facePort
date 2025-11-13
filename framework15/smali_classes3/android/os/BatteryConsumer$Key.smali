.class public final Landroid/os/BatteryConsumer$Key;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# instance fields
.field final blacklist mDurationColumnIndex:I

.field final blacklist mPowerColumnIndex:I

.field final blacklist mPowerModelColumnIndex:I

.field private blacklist mShortString:Ljava/lang/String;

.field public final blacklist powerComponent:I

.field public final blacklist powerState:I

.field public final blacklist processState:I

.field public final blacklist screenState:I


# direct methods
.method private constructor blacklist <init>(IIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iput p2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iput p3, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iput p4, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    iput p5, p0, Landroid/os/BatteryConsumer$Key;->mPowerModelColumnIndex:I

    iput p6, p0, Landroid/os/BatteryConsumer$Key;->mPowerColumnIndex:I

    iput p7, p0, Landroid/os/BatteryConsumer$Key;->mDurationColumnIndex:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIIIILandroid/os/BatteryConsumer$Key-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIII)V

    return-void
.end method

.method public static blacklist toString(IIII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, ":scr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsScreenStateNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const-string v1, ":pwr-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetsPowerStateNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    iget v2, v0, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    add-int/2addr v1, v2

    return v1
.end method

.method blacklist matches(IIII)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-eqz p3, :cond_2

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    if-eq v0, p3, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_3

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    if-eq v0, p4, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/os/BatteryConsumer$Key;->powerComponent:I

    iget v1, p0, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v2, p0, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v3, p0, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
