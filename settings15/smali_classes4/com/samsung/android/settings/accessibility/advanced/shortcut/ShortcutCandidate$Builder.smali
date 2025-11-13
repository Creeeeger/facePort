.class public abstract Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public category:Ljava/lang/String;

.field public final componentName:Ljava/lang/String;

.field public priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->priority:I

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->componentName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate$Builder;->componentName:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public abstract build(Landroid/content/Context;I)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutCandidate;
.end method

.method public abstract buildEntry(Landroid/content/Context;)Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;
.end method
