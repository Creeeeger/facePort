.class public final Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;

    sget-object v1, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/advanced/shortcut/ShortcutSwitchPreferenceFragment;->refreshControllerList(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
