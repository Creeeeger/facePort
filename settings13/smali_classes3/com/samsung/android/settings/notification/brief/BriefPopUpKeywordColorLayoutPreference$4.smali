.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 253
    sget v0, Lcom/android/settings/R$id;->custom_text_plus_btn:I

    if-ne p1, v0, :cond_0

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmEditTextView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$msaveAppCustomColorText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;Ljava/lang/CharSequence;)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmEditTextView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$4;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$mcheckTextAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    :cond_0
    return-void
.end method
