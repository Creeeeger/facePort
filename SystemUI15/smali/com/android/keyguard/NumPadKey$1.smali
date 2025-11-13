.class public final Lcom/android/keyguard/NumPadKey$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/NumPadKey;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/NumPadKey;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v0, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget v0, v0, Lcom/android/keyguard/NumPadKey;->mTextViewResId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/keyguard/PasswordTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    check-cast p1, Lcom/android/keyguard/PasswordTextView;

    iput-object p1, v0, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object p1, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/EditText;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object v1, p1, Lcom/android/keyguard/NumPadKey;->mTextView:Lcom/android/keyguard/PasswordTextView;

    iget p1, p1, Lcom/android/keyguard/NumPadKey;->mDigit:I

    const/16 v2, 0xa

    invoke-static {p1, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result p1

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getTransformedText()Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    if-ge v3, v4, :cond_2

    invoke-virtual {v1}, Lcom/android/keyguard/BaseSecPasswordTextView;->getTextCharsSize()I

    move-result v3

    iget v4, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mMaxLength:I

    if-lt v3, v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-static {v3, v4, p1}, Landroidx/compose/runtime/OpaqueKey$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/keyguard/BaseSecPasswordTextView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v3}, Lcom/android/keyguard/PasswordTextView;->onAppend(CI)V

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->onUserActivity()V

    move-object p1, v2

    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v0, v3}, Lcom/android/keyguard/BaseSecPasswordTextView;->sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/NumPadKey$1;->this$0:Lcom/android/keyguard/NumPadKey;

    iget-object p0, p0, Lcom/android/keyguard/NumPadKey;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
