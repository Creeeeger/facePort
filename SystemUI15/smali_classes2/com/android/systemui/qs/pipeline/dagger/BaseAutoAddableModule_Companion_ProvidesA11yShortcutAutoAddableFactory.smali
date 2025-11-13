.class public final Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesA11yShortcutAutoAddableFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final a11yShortcutAutoAddableFactoryProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesA11yShortcutAutoAddableFactory;->a11yShortcutAutoAddableFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static providesA11yShortcutAutoAddable(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;)Ljava/util/Set;
    .locals 6

    sget-object v0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule;->Companion:Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddableList;->INSTANCE:Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddableList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/view/accessibility/Flags;->a11yQsShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ColorCorrection"

    invoke-static {v0}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v0

    sget-object v1, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object v0

    const-string v1, "ColorInversion"

    invoke-static {v1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v1

    sget-object v2, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object v1

    const-string v2, "onehanded"

    invoke-static {v2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v2

    sget-object v3, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ONE_HANDED_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object v2

    const-string v3, "ReduceBrightColors"

    invoke-static {v3}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v3

    sget-object v4, Lcom/android/internal/accessibility/AccessibilityShortcutController;->REDUCE_BRIGHT_COLORS_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object v3

    const-string v4, "hearing_devices"

    invoke-static {v4}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v4

    sget-object v5, Lcom/android/internal/accessibility/AccessibilityShortcutController;->ACCESSIBILITY_HEARING_AIDS_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;->create(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Landroid/content/ComponentName;)Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Lcom/android/systemui/qs/pipeline/domain/autoaddable/A11yShortcutAutoAddable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesA11yShortcutAutoAddableFactory;->a11yShortcutAutoAddableFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;

    invoke-static {p0}, Lcom/android/systemui/qs/pipeline/dagger/BaseAutoAddableModule_Companion_ProvidesA11yShortcutAutoAddableFactory;->providesA11yShortcutAutoAddable(Lcom/android/systemui/dagger/DaggerReferenceGlobalRootComponent$ReferenceSysUIComponentImpl$SwitchingProvider$49;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
