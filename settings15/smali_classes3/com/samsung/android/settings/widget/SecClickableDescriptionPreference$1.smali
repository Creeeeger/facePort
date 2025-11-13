.class public final Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

.field public final synthetic val$message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->this$0:Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1;->val$message:Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/app/AlertDialog$Builder;->P:Landroidx/appcompat/app/AlertController$AlertParams;

    iput-object p0, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    new-instance p0, Lcom/samsung/android/settings/widget/SecClickableDescriptionPreference$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1409d0

    invoke-virtual {p1, v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
