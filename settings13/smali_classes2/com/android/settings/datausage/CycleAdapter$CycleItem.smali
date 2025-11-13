.class public Lcom/android/settings/datausage/CycleAdapter$CycleItem;
.super Ljava/lang/Object;
.source "CycleAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/CycleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field public dateSetByUser:Z

.field public description:Ljava/lang/String;

.field public end:J

.field public isSetCycle:Z

.field public isUserSettedItem:Z

.field public label:Ljava/lang/CharSequence;

.field public start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isSetCycle:Z

    .line 243
    sget v0, Lcom/android/settings/R$string;->select_date_to_view:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 244
    iput-boolean p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJ)V
    .locals 1

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isSetCycle:Z

    .line 218
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    .line 219
    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    .line 220
    iput-wide p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->makeContentDescription(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JJZ)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->dateSetByUser:Z

    .line 206
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    .line 209
    iput-boolean v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isSetCycle:Z

    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    .line 236
    iput-wide p2, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    .line 237
    iput-wide p4, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->end:J

    .line 238
    iput-boolean p6, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    .line 239
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->makeContentDescription(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->description:Ljava/lang/String;

    return-void
.end method

.method private makeContentDescription(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 280
    :cond_0
    invoke-static {p1, p2, p3, p2, p3}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p2, 0x1

    sub-long/2addr p4, p2

    .line 281
    invoke-static {p1, p4, p5, p4, p5}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object p2

    .line 283
    sget p3, Lcom/android/settings/R$string;->sec_data_usage_summary_preference_cycle_label_tts:I

    const/4 p4, 0x2

    new-array p4, p4, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p0, p4, p5

    const/4 p0, 0x1

    aput-object p2, p4, p0

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 4

    .line 265
    iget-wide v0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    iget-wide v2, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->start:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 266
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->isUserSettedItem:Z

    if-nez p0, :cond_0

    const/4 v0, -0x1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 199
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 255
    instance-of v0, p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 257
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

.method public toString()Ljava/lang/String;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->label:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
