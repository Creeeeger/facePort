.class public abstract Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static final logEntryEvent(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;
    .locals 4

    check-cast p0, Landroidx/compose/runtime/ComposerImpl;

    const v0, -0x6541a800

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Lcom/android/settingslib/spa/framework/common/SettingsEntryKt;->LocalEntryDataProvider:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/common/EntryData;

    invoke-interface {v1}, Lcom/android/settingslib/spa/framework/common/EntryData;->getEntryId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    sget-object v0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$entryId$1;->INSTANCE:Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$entryId$1;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/spa/framework/common/EntryData;

    invoke-interface {v0}, Lcom/android/settingslib/spa/framework/common/EntryData;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    new-instance v3, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;

    invoke-direct {v3, v1, v0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$logEntryEvent$1;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v3
.end method

.method public static final wrapOnClickWithLog(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function0;
    .locals 4

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x6621eeef

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;->logEntryEvent(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    const v2, 0x2b71c74d

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_1

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v3, v2, :cond_2

    :cond_1
    new-instance v3, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;

    invoke-direct {v3, v1, p0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v3
.end method

.method public static final wrapOnSwitchWithLog(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function1;
    .locals 5

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    const v0, 0x9b01d67

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->invocation:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt;->logEntryEvent(Landroidx/compose/runtime/Composer;)Lkotlin/jvm/functions/Function2;

    move-result-object v1

    const v2, 0x3bef3271

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v2

    and-int/lit8 v3, p2, 0xe

    xor-int/lit8 v3, v3, 0x6

    const/4 v4, 0x4

    if-le v3, v4, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    and-int/lit8 p2, p2, 0x6

    if-ne p2, v4, :cond_3

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    move p2, v0

    :goto_0
    or-int/2addr p2, v2

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez p2, :cond_4

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, p2, :cond_5

    :cond_4
    new-instance v2, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnSwitchWithLog$1$1;

    invoke-direct {v2, p0, v1}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnSwitchWithLog$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/ComposerImpl;->updateRememberedValue(Ljava/lang/Object;)V

    :cond_5
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object v2
.end method
