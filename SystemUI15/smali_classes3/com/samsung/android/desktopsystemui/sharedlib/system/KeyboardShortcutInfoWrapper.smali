.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/KeyboardShortcutInfoWrapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearIcon(Landroid/view/KeyboardShortcutInfo;)V
    .locals 0

    invoke-virtual {p0}, Landroid/view/KeyboardShortcutInfo;->clearIcon()V

    return-void
.end method

.method public static getIcon(Landroid/view/KeyboardShortcutInfo;)Landroid/graphics/drawable/Icon;
    .locals 0

    invoke-virtual {p0}, Landroid/view/KeyboardShortcutInfo;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyboardShortcutInfo(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)Landroid/view/KeyboardShortcutInfo;
    .locals 1

    new-instance v0, Landroid/view/KeyboardShortcutInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    return-object v0
.end method
