.class public final Lcom/android/systemui/classifier/TypeClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier;-><init>(Lcom/android/systemui/classifier/FalsingDataProvider;)V

    return-void
.end method


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 11

    const/16 v0, 0xd

    const-wide/16 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v3

    xor-int/lit8 v4, v3, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    move v3, v7

    :goto_1
    :pswitch_1
    move-wide v1, v9

    goto :goto_2

    :pswitch_2
    move v3, v4

    goto :goto_2

    :pswitch_3
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v8

    goto :goto_1

    :pswitch_4
    if-nez v6, :cond_1

    if-nez v5, :cond_2

    goto :goto_0

    :pswitch_5
    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    goto :goto_0

    :pswitch_6
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    goto :goto_0

    :pswitch_7
    move v3, v4

    goto :goto_1

    :pswitch_8
    if-eqz v4, :cond_1

    if-eqz v5, :cond_2

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    move-result v0

    xor-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    move-result v4

    const-string/jumbo v5, "{interaction="

    const-string v6, ", vertical="

    const-string v7, ", up="

    invoke-static {v5, p1, v6, v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", right="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(DLjava/lang/String;)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    move-result-object p0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method
