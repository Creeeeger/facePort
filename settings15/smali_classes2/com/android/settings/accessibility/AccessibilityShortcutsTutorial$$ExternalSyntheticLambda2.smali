.class public final synthetic Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertDialog;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/app/AlertDialog;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/app/AlertDialog;

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/settings/accessibility/AccessibilityShortcutsTutorial;->updateTutorialNegativeButtonTextAndVisibility(Landroidx/appcompat/app/AlertDialog;Ljava/util/List;I)V

    return-void
.end method
