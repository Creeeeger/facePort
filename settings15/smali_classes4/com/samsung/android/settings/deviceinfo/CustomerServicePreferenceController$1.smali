.class public final Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string/jumbo p1, "tel:1588-3366"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->access$000(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
