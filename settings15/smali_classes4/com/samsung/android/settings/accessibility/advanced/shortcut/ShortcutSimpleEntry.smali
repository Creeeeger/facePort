.class public Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;
.super Ljava/util/AbstractMap$SimpleEntry;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap$SimpleEntry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final priority:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;->priority:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;->priority:I

    iput p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;->priority:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;

    iget p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;->priority:I

    iget p1, p1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSimpleEntry;->priority:I

    sub-int/2addr p0, p1

    return p0
.end method
