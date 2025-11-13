.class public abstract Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;
.super Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final category:Ljava/lang/String;

.field private final exclusiveFeature:Ljava/lang/String;

.field private final icon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;-><init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->exclusiveFeature:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->category:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->category:Ljava/lang/String;

    return-object p0
.end method

.method public final getExclusiveFeature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->exclusiveFeature:Ljava/lang/String;

    return-object p0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
