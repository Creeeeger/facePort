.class public final Lcom/android/settings/accessibility/AccessibilitySettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings$1;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->onContentChanged()V

    :cond_0
    return-void
.end method
