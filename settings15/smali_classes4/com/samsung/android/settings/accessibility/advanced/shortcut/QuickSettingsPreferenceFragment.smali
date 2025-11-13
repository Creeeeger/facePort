.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/QuickSettingsPreferenceFragment;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDbKey()Ljava/lang/String;
    .locals 0

    const-string p0, "accessibility_qs_targets"

    return-object p0
.end method

.method public final getDescriptionResId()I
    .locals 0

    const p0, 0x7f1401a2

    return p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "QuickSettingsPreferenceFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1772

    return p0
.end method

.method public final getShortcutType()I
    .locals 0

    const/16 p0, 0x10

    return p0
.end method

.method public final getTitleResId()I
    .locals 0

    const p0, 0x7f140186

    return p0
.end method
