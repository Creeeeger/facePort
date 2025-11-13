.class public final Landroid/text/TextFlags;
.super Ljava/lang/Object;
.source "TextFlags.java"


# static fields
.field public static final blacklist ENABLE_NEW_CONTEXT_MENU:Ljava/lang/String; = "TextEditing__enable_new_context_menu"

.field public static final blacklist ENABLE_NEW_CONTEXT_MENU_DEFAULT:Z = false

.field public static final blacklist KEY_ENABLE_NEW_CONTEXT_MENU:Ljava/lang/String; = "text__enable_new_context_menu"

.field public static final blacklist NAMESPACE:Ljava/lang/String; = "text"

.field public static final blacklist TEXT_ACONFIGS_FLAGS:[Ljava/lang/String;

.field public static final blacklist TEXT_ACONFIG_DEFAULT_VALUE:[Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const-string v4, "com.android.text.flags.icu_bidi_migration"

    const-string v5, "com.android.text.flags.fix_misaligned_context_menu"

    const-string v0, "com.android.text.flags.no_break_no_hyphenation_span"

    const-string v1, "com.android.text.flags.phrase_strict_fallback"

    const-string v2, "com.android.text.flags.use_bounds_for_width"

    const-string v3, "com.android.text.flags.fix_line_height_for_locale"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/TextFlags;->TEXT_ACONFIGS_FLAGS:[Ljava/lang/String;

    nop

    invoke-static {}, Lcom/android/text/flags/Flags;->noBreakNoHyphenationSpan()Z

    move-result v0

    invoke-static {}, Lcom/android/text/flags/Flags;->phraseStrictFallback()Z

    move-result v1

    invoke-static {}, Lcom/android/text/flags/Flags;->useBoundsForWidth()Z

    move-result v2

    invoke-static {}, Lcom/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v3

    invoke-static {}, Lcom/android/text/flags/Flags;->icuBidiMigration()Z

    move-result v4

    invoke-static {}, Lcom/android/text/flags/Flags;->fixMisalignedContextMenu()Z

    move-result v5

    const/4 v6, 0x6

    new-array v6, v6, [Z

    const/4 v7, 0x0

    aput-boolean v0, v6, v7

    const/4 v0, 0x1

    aput-boolean v1, v6, v0

    const/4 v0, 0x2

    aput-boolean v2, v6, v0

    const/4 v0, 0x3

    aput-boolean v3, v6, v0

    const/4 v0, 0x4

    aput-boolean v4, v6, v0

    const/4 v0, 0x5

    aput-boolean v5, v6, v0

    sput-object v6, Landroid/text/TextFlags;->TEXT_ACONFIG_DEFAULT_VALUE:[Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getKeyForFlag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "text__"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isFeatureEnabled(Ljava/lang/String;)Z
    .locals 2

    nop

    invoke-static {p0}, Landroid/text/TextFlags;->getKeyForFlag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/AppGlobals;->getIntCoreSetting(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
