.class public final Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mActivity:Landroid/app/Activity;

.field public final synthetic this$0:Lcom/android/settingslib/users/CreateUserDialogController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/CreateUserDialogController;Landroid/app/Activity;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    invoke-direct {p0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput-object p2, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    move-result p3

    if-eqz p3, :cond_1

    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object p3, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object p4, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const p6, 0x7f130bae

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    invoke-static {p4, p5, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p4

    iput-object p4, p3, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/CreateUserDialogController;

    iget-object p0, p0, Lcom/android/settingslib/users/CreateUserDialogController;->mMaxToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x262a

    const-string p3, ""

    if-eq p0, p1, :cond_2

    const/16 p1, 0x271d

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return-object p3

    :cond_3
    :goto_0
    return-object p2
.end method
