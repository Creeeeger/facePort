.class Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "SecClickableDescriptionPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;->showDialogByClickOnSpannableText(Landroid/widget/TextView;Ljava/lang/String;IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 69
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->common_ok:I

    new-instance v1, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1$1;-><init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;)V

    .line 71
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x1

    .line 82
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
