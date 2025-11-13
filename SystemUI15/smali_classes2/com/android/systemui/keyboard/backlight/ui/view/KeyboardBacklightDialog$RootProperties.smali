.class public final Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final cornerRadius:F

.field public final horizontalPadding:I

.field public final verticalPadding:I


# direct methods
.method public constructor <init>(FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    iput p2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    iput p3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;

    iget v1, p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    iget v3, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    iget v3, p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    iget p1, p1, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget p0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RootProperties(cornerRadius="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->cornerRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", verticalPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->verticalPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", horizontalPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/keyboard/backlight/ui/view/KeyboardBacklightDialog$RootProperties;->horizontalPadding:I

    const-string v1, ")"

    invoke-static {p0, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
