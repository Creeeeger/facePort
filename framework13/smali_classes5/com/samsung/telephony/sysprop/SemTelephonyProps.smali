.class public final Lcom/samsung/telephony/sysprop/SemTelephonyProps;
.super Ljava/lang/Object;
.source "SemTelephonyProps.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist act_date()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 420
    const-string/jumbo v0, "ril.actdate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist act_date(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 425
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.actdate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method public static blacklist backoff_state()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 429
    const-string/jumbo v0, "ril.backoffstate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist backoff_state(Ljava/lang/Long;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 434
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.backoffstate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    return-void
.end method

.method public static blacklist band_list()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 862
    const-string/jumbo v0, "ril.bandList"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda17;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist band_list(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 867
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.bandList"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public static blacklist bravo()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 438
    const-string/jumbo v0, "ril.BRAVO"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist bravo(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 443
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.BRAVO"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method public static blacklist build_type()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 789
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist call_end_cause_param()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 501
    const-string/jumbo v0, "ril.call_end_cause.param"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda14;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist call_end_cause_param(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 506
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.call_end_cause.param"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    return-void
.end method

.method public static blacklist carrier()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    const-string/jumbo v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cdma_home_operator_alpha()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 943
    const-string/jumbo v0, "ro.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cdma_home_operator_alpha(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 948
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.cdma.home.operator.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public static blacklist cs_svc()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 519
    const-string/jumbo v0, "ril.cs_svc"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cs_svc(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 524
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.cs_svc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public static blacklist current_active_phone()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 898
    const-string v0, "gsm.current.phone-type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda27;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist current_active_phone(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 903
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "gsm.current.phone-type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method public static blacklist current_plmn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 303
    const-string/jumbo v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda24;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda24;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist current_plmn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 308
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.currentplmn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static blacklist debug_cdma_support_type()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 528
    const-string/jumbo v0, "ril.debug.cdmasupporttype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist debug_cdma_support_type(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 533
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.debug.cdmasupporttype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    return-void
.end method

.method public static blacklist def_network_after_check_tdscdma()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 799
    const-string/jumbo v0, "ro.ril.def_network_after_check_tdscdma"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist def_network_after_check_tdscdma(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 804
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.def_network_after_check_tdscdma"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    return-void
.end method

.method public static blacklist device_off_res()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 537
    const-string/jumbo v0, "ril.deviceOffRes"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist device_off_res(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 542
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.deviceOffRes"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method public static blacklist dump_time()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 546
    const-string/jumbo v0, "ril.dumptime"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist dump_time(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 551
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.dumptime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    return-void
.end method

.method public static blacklist enabled_5g_rf()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 555
    const-string/jumbo v0, "ril.enabled_5g_rf"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist enabled_5g_rf(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 560
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.enabled_5g_rf"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public static blacklist epdg_cross_sim()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 844
    const-string/jumbo v0, "ril.epdg.cross_sim"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 845
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist epdg_cross_sim(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 849
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.epdg.cross_sim"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private static blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 119
    const-string v0, "([\\\\,])"

    const-string v1, "\\\\$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist extend_band()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 564
    const-string/jumbo v0, "ril.extend_band"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist extend_band(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 569
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.extend_band"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private static blacklist formatEnumList(Ljava/util/List;Ljava/util/function/Function;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 153
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "elementFormatter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 156
    .local v2, "element":Ljava/lang/Enum;, "TT;"
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 157
    .end local v2    # "element":Ljava/lang/Enum;, "TT;"
    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "element":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    .end local v2    # "element":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatUIntList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 136
    .local v2, "element":Ljava/lang/Integer;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    .end local v2    # "element":Ljava/lang/Integer;
    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatULongList(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 146
    .local v2, "element":Ljava/lang/Long;
    if-nez v2, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    .end local v2    # "element":Ljava/lang/Long;
    goto :goto_0

    .line 149
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist get_band()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 573
    const-string/jumbo v0, "ril.get_band"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda16;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist get_band(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 578
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.get_band"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    return-void
.end method

.method public static blacklist get_ca_comb()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 582
    const-string/jumbo v0, "ril.get_ca_comb"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda18;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist get_ca_comb(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 587
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.get_ca_comb"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public static blacklist in_ecm_mode()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    const-string/jumbo v0, "ril.vendor.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist in_ecm_mode(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 515
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.vendor.inecmmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public static blacklist ipc_log()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 330
    const-string/jumbo v0, "persist.radio.ipclog"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ipc_log(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 335
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.ipclog"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static blacklist is_cdma()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    const-string/jumbo v0, "ril.iscdma"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist is_cdma(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 497
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.iscdma"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method static synthetic blacklist lambda$band_list$23(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 863
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$call_end_cause_param$12(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 502
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$current_active_phone$24(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 899
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$current_plmn$9(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 304
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$debug_cdma_support_type$13(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 529
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$epdg_cross_sim$21(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 845
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$get_band$14(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 574
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$get_ca_comb$15(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 583
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$latest_modeltype$6(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 277
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$limited_lte_reject$4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 259
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lte_band$16(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 610
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lte_network_type$17(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 619
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lte_scell_bands$18(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 628
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$lte_voice_support$2(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 218
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$msim_submode$27(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 926
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$network_reg_status$8(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 295
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$network_reject_cause$7(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 286
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$nr_network_type$19(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 655
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_alpha$25(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 908
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$operator_numeric$26(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 917
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$reject_rat$10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 313
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$rejected_plmn$11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 322
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$ril_init_done$22(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 854
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$signal_param$20(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 727
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$sim_mobility$5(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 268
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$ss_error_code$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 227
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$volte_911call$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 164
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$wfc_default_spn$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 173
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist latest_modeltype()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 276
    const-string/jumbo v0, "persist.radio.latest-modeltype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda13;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist latest_modeltype(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.latest-modeltype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public static blacklist lima()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 474
    const-string/jumbo v0, "ril.LIMA"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lima(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 479
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.LIMA"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public static blacklist limited_lte_reject()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 258
    const-string/jumbo v0, "ril.data.limited_lte_reject"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda21;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist limited_lte_reject(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 263
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.data.limited_lte_reject"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-void
.end method

.method public static blacklist loopback_call_flag()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 591
    const-string/jumbo v0, "ril.LoopbackCallFlag"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist loopback_call_flag(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 596
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.LoopbackCallFlag"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void
.end method

.method public static blacklist lte_band()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 609
    const-string/jumbo v0, "ril.lteband"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda25;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda25;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_band(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 614
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.lteband"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public static blacklist lte_network_type()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 618
    const-string/jumbo v0, "ril.ltenetworktype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda22;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_network_type(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 623
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.ltenetworktype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method public static blacklist lte_scell_bands()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 627
    const-string/jumbo v0, "ril.ltescellbands"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_scell_bands(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 632
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.ltescellbands"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method

.method public static blacklist lte_voice_status()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 600
    const-string/jumbo v0, "ril.lte.voice.status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_voice_status(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 605
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.lte.voice.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    return-void
.end method

.method public static blacklist lte_voice_support()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 217
    const-string/jumbo v0, "ril.ims.ltevoicesupport"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_voice_support(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.ims.ltevoicesupport"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static blacklist lte_vrte_ltd()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 339
    const-string/jumbo v0, "persist.radio.lte_vrte_ltd"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist lte_vrte_ltd(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 344
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.lte_vrte_ltd"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public static blacklist main_stack()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 636
    const-string/jumbo v0, "ril.MainStack"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist main_stack(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 641
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.MainStack"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public static blacklist max_ims_instance()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 348
    const-string/jumbo v0, "persist.radio.max_ims_instance"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist max_ims_instance(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 353
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.max_ims_instance"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public static blacklist msim_submode()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 925
    const-string/jumbo v0, "ril.msim.submode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 926
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist msim_submode(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 930
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.msim.submode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    return-void
.end method

.method public static blacklist multi_sim_config()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 934
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist multi_sim_config(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 939
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    return-void
.end method

.method public static blacklist network_manual_set_rat()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 645
    const-string/jumbo v0, "ril.network_manual_set.rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist network_manual_set_rat(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 650
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.network_manual_set.rat"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    return-void
.end method

.method public static blacklist network_reg_status()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 294
    const-string/jumbo v0, "ril.skt.network_regist_status"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist network_reg_status(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 299
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.skt.network_regist_status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    return-void
.end method

.method public static blacklist network_reject_cause()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 285
    const-string/jumbo v0, "ril.skt.network_regist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda19;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist network_reject_cause(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 290
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.skt.network_regist"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method public static blacklist nitz_time()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 880
    const-string v0, "gsm.nitz.time"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist nitz_time(Ljava/lang/Long;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 885
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "gsm.nitz.time"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public static blacklist nitz_time_elapsed_time()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 889
    const-string v0, "gsm.nitz.time-elapsedtime"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist nitz_time_elapsed_time(Ljava/lang/Long;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 894
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "gsm.nitz.time-elapsedtime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    return-void
.end method

.method public static blacklist november()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 456
    const-string/jumbo v0, "ril.NOVEMBER"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist november(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 461
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.NOVEMBER"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method public static blacklist nr_network_type()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 654
    const-string/jumbo v0, "ril.nrnetworktype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda23;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda23;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist nr_network_type(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 659
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.nrnetworktype"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public static blacklist omc_etc_path()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 411
    const-string/jumbo v0, "persist.sys.omc_etcpath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist omc_etc_path(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 416
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.sys.omc_etcpath"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static blacklist operator_alpha()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 907
    const-string v0, "gsm.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_alpha(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 912
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "gsm.operator.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method public static blacklist operator_numeric()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 916
    const-string v0, "gsm.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 917
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist operator_numeric(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 921
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "gsm.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public static blacklist override_ps_e911()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 357
    const-string/jumbo v0, "persist.radio.override_pse911"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist override_ps_e911(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 362
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.override_pse911"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static blacklist override_ps_voice()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 366
    const-string/jumbo v0, "persist.radio.override_psvoice"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist override_ps_voice(Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Boolean;

    .line 371
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.override_psvoice"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method

.method public static blacklist phone1_mapped_md()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 663
    const-string/jumbo v0, "ril.phone1.mapped.md"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist phone1_mapped_md(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 668
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.phone1.mapped.md"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method public static blacklist radio_state()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 672
    const-string/jumbo v0, "ril.radiostate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist radio_state(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 677
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.radiostate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public static blacklist read_done()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 483
    const-string/jumbo v0, "ril.read.done"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist read_done(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 488
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.read.done"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method public static blacklist reject_rat()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    const-string/jumbo v0, "ril.reject.rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda15;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist reject_rat(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 317
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.reject.rat"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return-void
.end method

.method public static blacklist rejected_plmn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 321
    const-string/jumbo v0, "ril.rejectedPlmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist rejected_plmn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 326
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.rejectedPlmn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method public static blacklist report_r_state()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 375
    const-string/jumbo v0, "persist.radio.report_rstate"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist report_r_state(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 380
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.report_rstate"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public static blacklist ril_cdma_home_operator_alpha()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    const-string/jumbo v0, "ro.ril.cdma.home.operator.alpha"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_cdma_home_operator_alpha(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 195
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.cdma.home.operator.alpha"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public static blacklist ril_cdma_home_operator_numeric()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    const-string/jumbo v0, "ro.ril.cdma.home.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_cdma_home_operator_numeric(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 204
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.cdma.home.operator.numeric"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public static blacklist ril_char()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 465
    const-string/jumbo v0, "ril.CHAR"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_char(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 470
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.CHAR"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public static blacklist ril_home_operator_carrierid()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 208
    const-string/jumbo v0, "ro.ril.home.operator.carrierid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_home_operator_carrierid(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 213
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.home.operator.carrierid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static blacklist ril_init_done()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 853
    const-string/jumbo v0, "ril.init_done"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda26;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda26;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_init_done(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 858
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.init_done"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    return-void
.end method

.method public static blacklist ril_preconfig()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 240
    const-string/jumbo v0, "persist.ril.preconfig"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ril_preconfig(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 245
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.ril.preconfig"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static blacklist send_device_config()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 681
    const-string/jumbo v0, "ril.senddeviceconfig"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist send_device_config(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 686
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.senddeviceconfig"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public static blacklist shutdown_requested()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 835
    const-string/jumbo v0, "sys.shutdown.requested"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist shutdown_requested(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 840
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "sys.shutdown.requested"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method

.method public static blacklist sib16_last_abs_time()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 690
    const-string/jumbo v0, "ril.sib16.last.absTime"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sib16_last_abs_time(Ljava/lang/Long;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 695
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.sib16.last.absTime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public static blacklist sib16_last_dst()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 699
    const-string/jumbo v0, "ril.sib16.last.dst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sib16_last_dst(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 704
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.sib16.last.dst"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method public static blacklist sib16_last_elapsed_time()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 708
    const-string/jumbo v0, "ril.sib16.last.elapsedtime"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sib16_last_elapsed_time(Ljava/lang/Long;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Long;

    .line 713
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.sib16.last.elapsedtime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public static blacklist sib16_last_timezone()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 717
    const-string/jumbo v0, "ril.sib16.last.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sib16_last_timezone(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 722
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.sib16.last.timezone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public static blacklist sib16_support()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 384
    const-string/jumbo v0, "persist.radio.sib16_support"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sib16_support(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 389
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.sib16_support"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public static blacklist sierra()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 447
    const-string/jumbo v0, "ril.SIERRA"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sierra(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 452
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.SIERRA"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void
.end method

.method public static blacklist signal_param()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 726
    const-string/jumbo v0, "ril.signal.param"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist signal_param(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.signal.param"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public static blacklist silent_reset()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 393
    const-string/jumbo v0, "persist.radio.silent-reset"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist silent_reset(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 398
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.silent-reset"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public static blacklist sim_mobility()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 267
    const-string/jumbo v0, "ril.sim.mobility"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sim_mobility(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 272
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.sim.mobility"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static blacklist ss_error_code()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    const-string/jumbo v0, "ril.ss.errorcode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ss_error_code(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.ss.errorcode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public static blacklist support_cdma()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 808
    const-string/jumbo v0, "ro.ril.support_cdma"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist support_cdma(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 813
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.support_cdma"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    return-void
.end method

.method public static blacklist support_dual_rat()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 249
    const-string/jumbo v0, "persist.radio.support.dualrat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist support_dual_rat(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 254
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.support.dualrat"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    return-void
.end method

.method public static blacklist support_incremental_scan()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 735
    const-string/jumbo v0, "ril.support.incrementalscan"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 736
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist support_incremental_scan(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 740
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.support.incrementalscan"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    return-void
.end method

.method public static blacklist support_nr_mode_from_cp()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 744
    const-string/jumbo v0, "persist.ril.supportNrModefromCp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist support_nr_mode_from_cp(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 749
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.ril.supportNrModefromCp"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    return-void
.end method

.method public static blacklist support_sa()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 753
    const-string/jumbo v0, "ril.supportSA"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist support_sa(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 758
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.supportSA"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    return-void
.end method

.method public static blacklist svdo()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 817
    const-string/jumbo v0, "ro.ril.svdo"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist svdo(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 822
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.svdo"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    return-void
.end method

.method public static blacklist svlte1x()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 826
    const-string/jumbo v0, "ro.ril.svlte1x"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist svlte1x(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 831
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ro.ril.svlte1x"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    return-void
.end method

.method public static blacklist sys_locale()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sys_locale(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 407
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.sys.locale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method public static blacklist sys_timezone()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 952
    const-string/jumbo v0, "persist.sys.timezone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sys_timezone(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 957
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public static blacklist telephony_default_network_wrong()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 794
    const-string/jumbo v0, "ro.boot.telephony.default_network_wrong"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test_emer_num()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    const-string/jumbo v0, "persist.radio.test_emer_num"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test_emer_num(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 186
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "persist.radio.test_emer_num"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static blacklist test_plmn()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 871
    const-string/jumbo v0, "ril.test.plmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 872
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist test_plmn(Ljava/lang/String;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .line 876
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.test.plmn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method private static blacklist tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 24
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x36758e -> :sswitch_1
        0x5cb1923 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist tryParseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 79
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 112
    .local v4, "element":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-object v0
.end method

.method private static blacklist tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "elementParser":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "p":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_3

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "p":I
    .local v3, "p":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1

    .line 98
    .end local v3    # "p":I
    .restart local v1    # "p":I
    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 103
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    return-object v0

    .line 100
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    nop

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_0
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 74
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method private static blacklist tryParseUInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseULong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist twwan_911_timer()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 762
    const-string/jumbo v0, "ril.twwan911Timer"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist twwan_911_timer(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 767
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.twwan911Timer"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public static blacklist ussd_not_done()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 771
    const-string/jumbo v0, "ril.ussd.notdone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist ussd_not_done(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 776
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.ussd.notdone"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    return-void
.end method

.method public static blacklist voice_rat()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 780
    const-string/jumbo v0, "ril.voice.rat"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist voice_rat(Ljava/lang/Integer;)V
    .locals 2
    .param p0, "value"    # Ljava/lang/Integer;

    .line 785
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.voice.rat"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method

.method public static blacklist volte_911call()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 163
    const-string/jumbo v0, "ril.volte.911call"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda20;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist volte_911call(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.volte.911call"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public static blacklist wfc_default_spn()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    const-string/jumbo v0, "ril.wfc.default_spn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyProps$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist wfc_default_spn(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 177
    .local p0, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyProps;->formatList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "ril.wfc.default_spn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method
