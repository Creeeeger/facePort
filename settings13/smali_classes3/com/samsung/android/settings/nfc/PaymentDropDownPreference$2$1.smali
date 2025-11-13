.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2$1;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2$1;->this$1:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 115
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2$1;->this$1:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;

    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$2;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 p1, 0x1

    invoke-static {p0, p3, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$msetSelectedItem(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;IZ)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
