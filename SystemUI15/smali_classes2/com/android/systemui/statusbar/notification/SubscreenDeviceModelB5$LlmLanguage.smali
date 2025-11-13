.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public language:Ljava/lang/String;

.field public languageDisplayName:Ljava/lang/String;

.field public order:I

.field public supportCorrection:Z

.field public supportReply:Z

.field public supportToneConversion:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    iput-boolean p6, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const-string v0, ""

    if-eqz p8, :cond_1

    move-object p8, v0

    goto :goto_0

    :cond_1
    move-object p8, p2

    :goto_0
    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    and-int/lit8 p2, p7, 0x8

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    move v1, p3

    goto :goto_2

    :cond_3
    move v1, p4

    :goto_2
    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    move v2, p3

    goto :goto_3

    :cond_4
    move v2, p5

    :goto_3
    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    move v3, p3

    goto :goto_4

    :cond_5
    move v3, p6

    :goto_4
    move-object p2, p0

    move p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-direct/range {p2 .. p8}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;-><init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    iget v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    iget-boolean v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/graphics/vector/PropertyValuesHolder2D$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->order:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->language:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->languageDisplayName:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportToneConversion:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportCorrection:Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$LlmLanguage;->supportReply:Z

    const-string v5, "LlmLanguage(order="

    const-string v6, ", language="

    const-string v7, ", languageDisplayName="

    invoke-static {v0, v5, v6, v1, v7}, Lcom/android/keyguard/KeyguardBiometricLockoutLogger$mKeyguardUpdateMonitorCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", supportToneConversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportCorrection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", supportReply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
