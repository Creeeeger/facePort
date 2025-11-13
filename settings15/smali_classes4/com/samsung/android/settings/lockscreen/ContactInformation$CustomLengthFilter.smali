.class public final Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;
.super Landroid/text/InputFilter$LengthFilter;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mMaxLength:I

.field public final synthetic this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/lockscreen/ContactInformation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    const/16 p1, 0x41

    invoke-direct {p0, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    iput p1, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public final filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p3, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f140a77

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iget p4, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->mMaxLength:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p4, p4, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p4, p3}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mScrollView:Landroid/widget/ScrollView;

    const/16 p3, 0x82

    invoke-virtual {p0, p3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x262a

    if-eq p0, p1, :cond_0

    const/16 p1, 0x271d

    if-ne p0, p1, :cond_2

    :cond_0
    const-string p0, ""

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation$CustomLengthFilter;->this$0:Lcom/samsung/android/settings/lockscreen/ContactInformation;

    iget-object p0, p0, Lcom/samsung/android/settings/lockscreen/ContactInformation;->mTextInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    :cond_2
    return-object p2
.end method
