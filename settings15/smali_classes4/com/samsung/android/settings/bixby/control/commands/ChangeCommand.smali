.class public final Lcom/samsung/android/settings/bixby/control/commands/ChangeCommand;
.super Lcom/samsung/android/settings/bixby/control/commands/SetCommand;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final makeExtra(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 7

    iget-object p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mActionParam:Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FloatCommand"

    if-eqz v0, :cond_7

    iget p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStepValue:F

    iget v2, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMinValue:F

    iget v3, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMaxValue:F

    iget v4, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    int-to-float v4, v4

    const-string v5, "MAX"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_0
    const-string v5, "MIN"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "MID"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    div-float v2, v3, v0

    goto :goto_1

    :cond_2
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const-string v6, "+"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    mul-float/2addr v5, p1

    add-float v2, v5, v4

    cmpl-float v0, v2, v3

    if-lez v0, :cond_6

    goto :goto_0

    :cond_3
    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    mul-float/2addr v5, p1

    sub-float v0, v4, v5

    cmpg-float v3, v0, v2

    if-gez v3, :cond_4

    goto :goto_1

    :cond_4
    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v5

    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "step : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", current : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", target : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to parse level : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "percentage"

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/bixby/control/actionparam/BaseActionParam;->getParameterValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    iget v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mMaxValue:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    move v4, v0

    goto :goto_2

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fail to parse percent : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    int-to-float p1, p1

    move v4, p1

    goto :goto_2

    :cond_8
    iget p1, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mCurrentValue:I

    int-to-float p1, p1

    iget v0, p0, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->mStepValue:F

    add-float v4, p1, v0

    :goto_2
    const/high16 p1, -0x40800000    # -1.0f

    cmpl-float p1, v4, p1

    if-nez p1, :cond_9

    const/4 p0, 0x0

    return-object p0

    :cond_9
    new-instance p1, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-direct {p1, v4}, Lcom/samsung/android/sdk/command/action/FloatAction;-><init>(F)V

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/settings/bixby/control/commands/BaseCommand;->getDataBundle(ZLcom/samsung/android/sdk/command/action/CommandAction;)Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "action"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method
