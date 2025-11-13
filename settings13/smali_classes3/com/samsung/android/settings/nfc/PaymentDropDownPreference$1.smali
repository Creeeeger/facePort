.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Landroid/content/Context;I)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$1;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p2, 0x0

    .line 83
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
