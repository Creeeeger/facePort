.class public Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;
.super Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field public shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment$1;

    const v1, 0x7f170035

    const-string v2, "com.samsung.android.settings.accessibility.hearing.HearingEnhancementsFragment"

    const-string v3, "amplify_ambient_sound"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/accessibility/base/search/AccessibilityBaseSearchIndexProvider;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final getLabelName()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140313

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "AmplifyAmbientSoundPreferenceFragmentFragment"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0xfa8

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f170035

    return p0
.end method

.method public final getShortcutPreferenceKey()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/accessibility/AccessibilityConstant;->COMPONENT_NAME_AMPLIFY_AMBIENT_SOUND_SHORTCUT:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->$r8$clinit:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;-><init>(Landroid/os/Handler;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/hearing/AmplifyAmbientSoundPreferenceFragment;->shortcutContentObserver:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver$1;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutContentObserver;->register(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method
