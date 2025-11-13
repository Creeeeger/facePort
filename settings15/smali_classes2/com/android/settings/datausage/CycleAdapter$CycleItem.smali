.class public final Lcom/android/settings/datausage/CycleAdapter$CycleItem;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public dateSetByUser:Z

.field public final description:Ljava/lang/String;

.field public final end:J

.field public isUserSettedItem:Z

.field public label:Ljava/lang/CharSequence;

.field public final start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    iput-boolean p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    invoke-static {p1, p2, p3, p5, p6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iput-wide p5, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    const/4 p4, 0x1

    iput-boolean p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p2, p3}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p2

    const-wide/16 p3, 0x1

    sub-long/2addr p5, p3

    invoke-static {p1, p5, p6, p5, p6}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p3

    const p4, 0x7f1422c6

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iput-wide p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p2, p3}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x1

    sub-long/2addr p4, v0

    invoke-static {p1, p4, p5, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p3

    const p4, 0x7f1422c6

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v2, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/settings/Rune;->SUPPORT_SMARTMANAGER_CN:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v4, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    iget-wide p0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
