.class public final Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecCopyableDescriptionPreference;

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    return p0
.end method
