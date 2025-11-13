.class public Lcom/android/text/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Lcom/android/text/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/text/flags/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/text/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    const-string v27, "com.android.text.flags.word_style_auto"

    const-string v28, ""

    const-string v2, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v3, "com.android.text.flags.deprecate_ui_fonts"

    const-string v4, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v5, "com.android.text.flags.escape_clears_focus"

    const-string v6, "com.android.text.flags.fix_double_underline"

    const-string v7, "com.android.text.flags.fix_font_update_failure"

    const-string v8, "com.android.text.flags.fix_line_height_for_locale"

    const-string v9, "com.android.text.flags.fix_misaligned_context_menu"

    const-string v10, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v11, "com.android.text.flags.handwriting_cursor_position"

    const-string v12, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v13, "com.android.text.flags.handwriting_unsupported_message"

    const-string v14, "com.android.text.flags.icu_bidi_migration"

    const-string v15, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v16, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v17, "com.android.text.flags.lazy_variation_instance"

    const-string v18, "com.android.text.flags.letter_spacing_justification"

    const-string v19, "com.android.text.flags.missing_getter_apis"

    const-string v20, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v21, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v22, "com.android.text.flags.phrase_strict_fallback"

    const-string v23, "com.android.text.flags.rust_hyphenator"

    const-string v24, "com.android.text.flags.use_bounds_for_width"

    const-string v25, "com.android.text.flags.use_optimized_boottime_font_loading"

    const-string v26, "com.android.text.flags.vendor_custom_locale_fallback"

    filled-new-array/range {v2 .. v28}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public greylist completeFontLoadInSystemServicesReady()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda18;-><init>()V

    const-string v1, "com.android.text.flags.complete_font_load_in_system_services_ready"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist deprecateUiFonts()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda22;-><init>()V

    const-string v1, "com.android.text.flags.deprecate_ui_fonts"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist disableHandwritingInitiatorForIme()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda17;-><init>()V

    const-string v1, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist escapeClearsFocus()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda10;-><init>()V

    const-string v1, "com.android.text.flags.escape_clears_focus"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixDoubleUnderline()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda25;-><init>()V

    const-string v1, "com.android.text.flags.fix_double_underline"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixFontUpdateFailure()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda11;-><init>()V

    const-string v1, "com.android.text.flags.fix_font_update_failure"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixLineHeightForLocale()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda15;-><init>()V

    const-string v1, "com.android.text.flags.fix_line_height_for_locale"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixMisalignedContextMenu()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda21;-><init>()V

    const-string v1, "com.android.text.flags.fix_misaligned_context_menu"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist fixNullTypefaceBolding()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "com.android.text.flags.fix_null_typeface_bolding"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v24, "com.android.text.flags.vendor_custom_locale_fallback"

    const-string v25, "com.android.text.flags.word_style_auto"

    const-string v0, "com.android.text.flags.complete_font_load_in_system_services_ready"

    const-string v1, "com.android.text.flags.deprecate_ui_fonts"

    const-string v2, "com.android.text.flags.disable_handwriting_initiator_for_ime"

    const-string v3, "com.android.text.flags.escape_clears_focus"

    const-string v4, "com.android.text.flags.fix_double_underline"

    const-string v5, "com.android.text.flags.fix_font_update_failure"

    const-string v6, "com.android.text.flags.fix_line_height_for_locale"

    const-string v7, "com.android.text.flags.fix_misaligned_context_menu"

    const-string v8, "com.android.text.flags.fix_null_typeface_bolding"

    const-string v9, "com.android.text.flags.handwriting_cursor_position"

    const-string v10, "com.android.text.flags.handwriting_end_of_line_tap"

    const-string v11, "com.android.text.flags.handwriting_unsupported_message"

    const-string v12, "com.android.text.flags.icu_bidi_migration"

    const-string v13, "com.android.text.flags.insert_mode_crash_when_delete"

    const-string v14, "com.android.text.flags.insert_mode_not_update_selection"

    const-string v15, "com.android.text.flags.lazy_variation_instance"

    const-string v16, "com.android.text.flags.letter_spacing_justification"

    const-string v17, "com.android.text.flags.missing_getter_apis"

    const-string v18, "com.android.text.flags.new_fonts_fallback_xml"

    const-string v19, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v20, "com.android.text.flags.phrase_strict_fallback"

    const-string v21, "com.android.text.flags.rust_hyphenator"

    const-string v22, "com.android.text.flags.use_bounds_for_width"

    const-string v23, "com.android.text.flags.use_optimized_boottime_font_loading"

    filled-new-array/range {v0 .. v25}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/text/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/text/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {v0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingCursorPosition()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_cursor_position"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingEndOfLineTap()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda12;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_end_of_line_tap"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist handwritingUnsupportedMessage()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "com.android.text.flags.handwriting_unsupported_message"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist icuBidiMigration()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda13;-><init>()V

    const-string v1, "com.android.text.flags.icu_bidi_migration"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeCrashWhenDelete()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda24;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_crash_when_delete"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist insertModeNotUpdateSelection()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "com.android.text.flags.insert_mode_not_update_selection"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/text/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/text/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist lazyVariationInstance()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "com.android.text.flags.lazy_variation_instance"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist letterSpacingJustification()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda16;-><init>()V

    const-string v1, "com.android.text.flags.letter_spacing_justification"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist missingGetterApis()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "com.android.text.flags.missing_getter_apis"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist newFontsFallbackXml()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda20;-><init>()V

    const-string v1, "com.android.text.flags.new_fonts_fallback_xml"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist noBreakNoHyphenationSpan()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "com.android.text.flags.no_break_no_hyphenation_span"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist phraseStrictFallback()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "com.android.text.flags.phrase_strict_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist rustHyphenator()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "com.android.text.flags.rust_hyphenator"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useBoundsForWidth()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda19;-><init>()V

    const-string v1, "com.android.text.flags.use_bounds_for_width"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist useOptimizedBoottimeFontLoading()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "com.android.text.flags.use_optimized_boottime_font_loading"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist vendorCustomLocaleFallback()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda23;-><init>()V

    const-string v1, "com.android.text.flags.vendor_custom_locale_fallback"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public greylist wordStyleAuto()Z
    .locals 2

    new-instance v0, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/text/flags/CustomFeatureFlags$$ExternalSyntheticLambda14;-><init>()V

    const-string v1, "com.android.text.flags.word_style_auto"

    invoke-virtual {p0, v1, v0}, Lcom/android/text/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method
