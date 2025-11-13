.class Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method public static synthetic $r8$lambda$NAEkST1lHG3kJ2vAesZTnU2oXqU(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->lambda$filter$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$filter$0()V
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 278
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 267
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->length()I

    move-result p1

    iget-object p3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result p3

    if-lt p1, p3, :cond_1

    .line 269
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmIsPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 270
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    const/4 p3, 0x1

    invoke-static {p1, p3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fputmIsPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)V

    .line 271
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmIsAlpha(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 272
    sget p4, Lcom/android/settings/R$string;->sec_lockpassword_password_too_long:I

    goto :goto_0

    .line 273
    :cond_0
    sget p4, Lcom/android/settings/R$string;->sec_lockpassword_pin_too_long:I

    :goto_0
    new-array p3, p3, [Ljava/lang/Object;

    iget-object p5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p2

    .line 271
    invoke-virtual {p1, p4, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 274
    iget-object p2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmGlifLayout(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/SecGlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/settings/password/SecGlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmGlifLayout(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/SecGlifLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/password/SecGlifLayout;->getDescriptionTextView()Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 283
    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;->this$0:Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fputmIsPasswordMaxLength(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Z)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
