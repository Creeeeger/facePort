.class public final Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/TelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static simStateToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN("

    const-string v1, ")"

    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :pswitch_0
    const-string p0, "PRESENT"

    goto :goto_0

    :pswitch_1
    const-string p0, "LOADED"

    goto :goto_0

    :pswitch_2
    const-string p0, "CARD_RESTRICTED"

    goto :goto_0

    :pswitch_3
    const-string p0, "CARD_IO_ERROR"

    goto :goto_0

    :pswitch_4
    const-string p0, "PERM_DISABLED"

    goto :goto_0

    :pswitch_5
    const-string p0, "NOT_READY"

    goto :goto_0

    :pswitch_6
    const-string p0, "READY"

    goto :goto_0

    :pswitch_7
    const-string p0, "NETWORK_LOCKED"

    goto :goto_0

    :pswitch_8
    const-string p0, "PUK_REQUIRED"

    goto :goto_0

    :pswitch_9
    const-string p0, "PIN_REQUIRED"

    goto :goto_0

    :pswitch_a
    const-string p0, "ABSENT"

    goto :goto_0

    :pswitch_b
    const-string p0, "UNKNOWN"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getSimCardInfo(I)Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;
    .locals 4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const-string v3, "BAE0000000000000"

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "312770"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "311480"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "BAE1000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "BAE2000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "BA01270000000000"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :cond_2
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_2
    const-string v2, "311270"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "311180"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "310950"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "310410"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "310280"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "310090"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p0, "80FF"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ATT_PCN:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :cond_4
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_8
    const-string v2, "310004"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_1

    :sswitch_9
    const-string p1, "46007"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :sswitch_a
    const-string p1, "46002"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :sswitch_b
    const-string p1, "46000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :sswitch_c
    const-string p1, "45412"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->CMCC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_d
    const-string p1, "45008"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->KT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_e
    const-string p1, "45006"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->LGT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_f
    const-string p1, "45005"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->SKT:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto/16 :goto_3

    :sswitch_10
    const-string p1, "20802"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :sswitch_11
    const-string p1, "20801"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ORANGE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto :goto_3

    :sswitch_12
    const-string v2, "20404"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->VZW:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto :goto_3

    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto :goto_3

    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "airtel"

    invoke-static {p1, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    goto :goto_2

    :cond_d
    move p1, v2

    :goto_2
    if-eqz p1, :cond_e

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->AIRTEL:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto :goto_3

    :cond_e
    iget-object p0, p0, Lcom/android/systemui/statusbar/pipeline/mobile/util/SimCardInfoUtil;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "jio"

    invoke-static {p0, p1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    :cond_f
    if-eqz v2, :cond_10

    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->RELIANCE:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    goto :goto_3

    :cond_10
    sget-object p0, Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;->ETC:Lcom/android/systemui/statusbar/pipeline/mobile/data/model/SimType;

    :goto_3
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x2d7323a -> :sswitch_12
        0x2d7413b -> :sswitch_11
        0x2d7413c -> :sswitch_10
        0x2f59814 -> :sswitch_f
        0x2f59815 -> :sswitch_e
        0x2f59817 -> :sswitch_d
        0x2f5a734 -> :sswitch_c
        0x2f60c6e -> :sswitch_b
        0x2f60c70 -> :sswitch_a
        0x2f60c75 -> :sswitch_9
        0x59d03362 -> :sswitch_8
        0x59d03475 -> :sswitch_7
        0x59d03bd8 -> :sswitch_6
        0x59d04281 -> :sswitch_5
        0x59d055c2 -> :sswitch_4
        0x59d0ac76 -> :sswitch_3
        0x59d0b018 -> :sswitch_2
        0x59d0b7b9 -> :sswitch_1
        0x59d1373c -> :sswitch_0
    .end sparse-switch
.end method
