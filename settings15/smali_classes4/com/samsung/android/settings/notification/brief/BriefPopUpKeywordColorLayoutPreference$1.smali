.class public final Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->-$$Nest$mupdateText(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;

    invoke-static {p0, p1}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;->-$$Nest$mfinishEdit(Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$TextColorListAdapter;Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mContext:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iget-object p2, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    check-cast p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    iget-object p2, p2, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->mEditTextView:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object p0, p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/brief/BriefPopUpKeywordColorLayoutPreference;->checkTextAvailable()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
