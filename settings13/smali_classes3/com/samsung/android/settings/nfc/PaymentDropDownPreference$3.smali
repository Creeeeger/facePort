.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 130
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmSpinner(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Spinner;->performClick()Z

    .line 131
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$3;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fputhasClicked(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Z)V

    const/16 p0, 0x1b65

    .line 133
    invoke-static {p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertFlowLogging(I)V

    return p1
.end method
