.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

.field public final mBatteryLevelTexts:[Ljava/lang/String;

.field public final mContentDescription:[Ljava/lang/String;

.field public final mFullTexts:[Ljava/lang/String;

.field public mHighlightSlotIndex:I

.field public final mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

.field public final mLevels:Ljava/util/List;

.field public mSelectedIndex:I

.field public final mTexts:[Ljava/lang/String;

.field public final mTimestamps:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mHighlightSlotIndex:I

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "Invalid BatteryChartViewModel levels.size: "

    const-string v5, ", timestamps.size: "

    const-string v6, "."

    invoke-static {v4, v5, v1, v3, v6}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroidx/core/util/Preconditions;->checkArgument(Ljava/lang/Object;Z)V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTexts:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mFullTexts:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mContentDescription:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mBatteryLevelTexts:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    iget-object v3, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    iget p1, p1, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getContentDescription(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mContentDescription:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateContentDescription(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    :cond_0
    aget-object p0, v0, p1

    return-object p0
.end method

.method public final getFullText(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mFullTexts:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateFullText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    :cond_0
    aget-object p0, v0, p1

    return-object p0
.end method

.method public final getSlotBatteryLevelText(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mBatteryLevelTexts:[Ljava/lang/String;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-virtual {v2, p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateSlotBatteryLevelText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    :cond_1
    aget-object p0, v1, v0

    return-object p0
.end method

.method public final getText(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTexts:[Ljava/lang/String;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLabelTextGenerator:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    invoke-virtual {v1, p1, p0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartPreferenceController$BaseLabelTextGenerator;->generateText(ILjava/util/List;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    :cond_0
    aget-object p0, v0, p1

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    iget v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getText(I)Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getFullText(I)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "levels: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", timestamps: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTimestamps:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", texts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mTexts:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", fullTexts: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mFullTexts:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", axisLabelPosition: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mAxisLabelPosition:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel$AxisLabelPosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ", selectedIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mSelectedIndex:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
