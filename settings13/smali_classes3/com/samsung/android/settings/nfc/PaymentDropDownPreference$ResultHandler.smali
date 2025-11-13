.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;
.super Landroid/os/Handler;
.source "PaymentDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResultHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;-><init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 300
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 302
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 304
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 316
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetentries(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 p1, 0xe42

    const/16 v3, 0x1b66

    int-to-long v4, v0

    .line 310
    invoke-static {p1, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    .line 311
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->nfc_payment_services_success:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetentries(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v0, v5, v0

    aput-object v0, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 312
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p1

    sget v3, Lcom/android/settings/R$string;->nfc_payment_services_fail:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetentries(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)[Ljava/lang/CharSequence;

    move-result-object v5

    aget-object v0, v5, v0

    aput-object v0, v4, v1

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {p0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/content/Context;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method
