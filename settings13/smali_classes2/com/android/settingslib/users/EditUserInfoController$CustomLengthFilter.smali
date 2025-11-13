.class Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "EditUserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/users/EditUserInfoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomLengthFilter"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/android/settingslib/users/EditUserInfoController;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/users/EditUserInfoController;Landroid/app/Activity;I)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    .line 289
    invoke-direct {p0, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 290
    iput-object p2, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 295
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 298
    iget-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p3}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 299
    iget-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p3}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p3}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->isShown()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 300
    :cond_0
    iget-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p3}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/Toast;->cancel()V

    .line 303
    :cond_1
    iget-object p3, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    iget-object p4, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    sget p6, Lcom/android/settingslib/R$string;->max_byte_error:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p5

    const/4 p6, 0x0

    invoke-static {p4, p5, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fputmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;Landroid/widget/Toast;)V

    .line 304
    iget-object p0, p0, Lcom/android/settingslib/users/EditUserInfoController$CustomLengthFilter;->this$0:Lcom/android/settingslib/users/EditUserInfoController;

    invoke-static {p0}, Lcom/android/settingslib/users/EditUserInfoController;->-$$Nest$fgetmMaxToast(Lcom/android/settingslib/users/EditUserInfoController;)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 307
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 308
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
