.class public final Lcom/android/settings/BugreportPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/BugreportPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/BugreportPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    iget-object v1, v0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/BugreportPreference;->mFullSummary:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    :cond_0
    iget-object v0, v0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    iget-object v0, v0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    iget-object v1, v0, Lcom/android/settings/BugreportPreference;->mInteractiveTitle:Landroid/widget/CheckedTextView;

    if-eq p1, v1, :cond_2

    iget-object v0, v0, Lcom/android/settings/BugreportPreference;->mInteractiveSummary:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/settings/BugreportPreference$1;->this$0:Lcom/android/settings/BugreportPreference;

    iget-object p0, p0, Lcom/android/settings/BugreportPreference;->mFullTitle:Landroid/widget/CheckedTextView;

    invoke-virtual {p0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    return-void
.end method
