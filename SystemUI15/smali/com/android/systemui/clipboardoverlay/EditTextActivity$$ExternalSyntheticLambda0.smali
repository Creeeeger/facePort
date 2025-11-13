.class public final synthetic Lcom/android/systemui/clipboardoverlay/EditTextActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/clipboardoverlay/EditTextActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/clipboardoverlay/EditTextActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/EditTextActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/clipboardoverlay/EditTextActivity;

    sget p1, Lcom/android/systemui/clipboardoverlay/EditTextActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p1, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clearSpans()V

    const-string/jumbo v0, "text"

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "android.content.extra.IS_SENSITIVE"

    iget-boolean v2, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity;->mSensitive:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    iget-object v0, p0, Lcom/android/systemui/clipboardoverlay/EditTextActivity;->mClipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
