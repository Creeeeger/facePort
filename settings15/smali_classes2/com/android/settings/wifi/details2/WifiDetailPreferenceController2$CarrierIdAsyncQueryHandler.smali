.class public final Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    invoke-static {p1}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$000(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p1, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    invoke-static {p0}, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->access$100(Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;)Landroid/content/Context;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const v0, 0x7f14363f

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$CarrierIdAsyncQueryHandler;->this$0:Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;

    iget-object p0, p0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2;->mEapSimSubscriptionPref:Landroidx/preference/Preference;

    const p1, 0x7f14363e

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_3
    return-void
.end method
