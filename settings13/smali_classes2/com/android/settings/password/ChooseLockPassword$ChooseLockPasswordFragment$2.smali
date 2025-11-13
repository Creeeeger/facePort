.class Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 691
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/ImeAwareEditText;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Landroid/widget/ImeAwareEditText;->length()I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result p2

    if-lt p1, p2, :cond_1

    .line 693
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-boolean p2, p1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz p2, :cond_0

    .line 694
    sget p2, Lcom/android/settings/R$string;->sec_lockpassword_password_too_long:I

    goto :goto_0

    .line 695
    :cond_0
    sget p2, Lcom/android/settings/R$string;->sec_lockpassword_pin_too_long:I

    :goto_0
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmPasswordMaxLength(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result p5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, p4

    .line 693
    invoke-virtual {p1, p2, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 696
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$2;->this$0:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->-$$Nest$fgetmHeaderText(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
