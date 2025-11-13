.class public final Landroidx/emoji2/viewsintegration/EmojiTextWatcher;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final mEditText:Landroid/widget/EditText;

.field public mEnabled:Z

.field public final mExpectInitializedEmojiCompat:Z

.field public final mInitCallback:Landroidx/emoji2/viewsintegration/EmojiTextWatcher$InitCallbackImpl;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mEnabled:Z

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Landroidx/emoji2/viewsintegration/EmojiTextWatcher;->mExpectInitializedEmojiCompat:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-gt p3, p4, :cond_2

    instance-of p0, p1, Landroid/text/Spannable;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->get()V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method
