.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    sget-object p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sVirtualKeyboardSettingsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch$1()V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityBounceKeysUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityBounceKeysSwitch()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilitySlowKeysUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilitySlowKeysSwitch()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->sAccessibilityStickyKeysUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateAccessibilityStickyKeysSwitch()V

    :cond_3
    :goto_0
    return-void
.end method
