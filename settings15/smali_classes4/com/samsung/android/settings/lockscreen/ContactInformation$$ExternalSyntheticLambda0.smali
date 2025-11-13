.class public final synthetic Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mOwnerInfoEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/app/AlertDialog;

    const/4 p0, -0x1

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
