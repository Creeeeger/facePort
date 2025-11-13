.class Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;
.super Ljava/lang/Object;
.source "BriefPopUpKeywordColorLayoutPreference.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->init()V
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

    .line 100
    iput-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 104
    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 105
    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p2}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$fgetmEditTextView(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->-$$Nest$mcheckTextAvailable(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;)V

    :cond_0
    return-void
.end method
