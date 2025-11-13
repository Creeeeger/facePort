.class Landroid/os/BatteryConsumer$BatteryConsumerData;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerData"
.end annotation


# instance fields
.field public final blacklist layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

.field private final blacklist mCursorRow:I

.field private final blacklist mCursorWindow:Landroid/database/CursorWindow;


# direct methods
.method constructor blacklist <init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iput p2, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    iput-object p3, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->layout:Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;

    return-void
.end method

.method static blacklist create(Landroid/database/CursorWindow;Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;)Landroid/os/BatteryConsumer$BatteryConsumerData;
    .locals 3

    invoke-virtual {p0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    invoke-virtual {p0}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate BatteryConsumerData: too many UIDs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatteryConsumer"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_0
    new-instance v1, Landroid/os/BatteryConsumer$BatteryConsumerData;

    invoke-direct {v1, p0, v0, p1}, Landroid/os/BatteryConsumer$BatteryConsumerData;-><init>(Landroid/database/CursorWindow;ILandroid/os/BatteryConsumer$BatteryConsumerDataLayout;)V

    return-object v1
.end method


# virtual methods
.method blacklist getDouble(I)D
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getInt(I)I
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method blacklist getLong(I)J
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method blacklist getString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist hasValue(I)Z
    .locals 3

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, p1}, Landroid/database/CursorWindow;->getType(II)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method blacklist putDouble(ID)V
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/database/CursorWindow;->putDouble(DII)Z

    return-void
.end method

.method blacklist putInt(II)V
    .locals 4

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    int-to-long v1, p2

    iget v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    return-void
.end method

.method blacklist putLong(IJ)V
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/database/CursorWindow;->putLong(JII)Z

    return-void
.end method

.method blacklist putString(ILjava/lang/String;)V
    .locals 2

    iget v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorWindow:Landroid/database/CursorWindow;

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerData;->mCursorRow:I

    invoke-virtual {v0, p2, v1, p1}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    return-void
.end method
