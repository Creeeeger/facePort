.class public Landroid/text/ClientFlags;
.super Ljava/lang/Object;
.source "ClientFlags.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fixLineHeightForLocale()Z
    .locals 1

    const-string v0, "com.android.text.flags.fix_line_height_for_locale"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist fixMisalignedContextMenu()Z
    .locals 1

    const-string v0, "com.android.text.flags.fix_misaligned_context_menu"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist icuBidiMigration()Z
    .locals 1

    const-string v0, "com.android.text.flags.icu_bidi_migration"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist noBreakNoHyphenationSpan()Z
    .locals 1

    const-string v0, "com.android.text.flags.no_break_no_hyphenation_span"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist phraseStrictFallback()Z
    .locals 1

    const-string v0, "com.android.text.flags.phrase_strict_fallback"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static blacklist useBoundsForWidth()Z
    .locals 1

    const-string v0, "com.android.text.flags.use_bounds_for_width"

    invoke-static {v0}, Landroid/text/TextFlags;->isFeatureEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
