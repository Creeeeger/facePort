.class public final synthetic Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/appcompat/widget/ListPopupWindow;->mPopup:Landroidx/appcompat/widget/AppCompatPopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->mListPopup:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    :cond_0
    const/16 p0, 0x1b65

    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    const/4 p0, 0x1

    return p0
.end method
