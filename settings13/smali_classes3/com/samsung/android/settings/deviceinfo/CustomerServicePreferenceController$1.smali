.class Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;
.super Ljava/lang/Object;
.source "CustomerServicePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;->updateState(Landroidx/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController$1;->this$0:Lcom/samsung/android/settings/deviceinfo/CustomerServicePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string p1, "tel:1588-3366"

    .line 47
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 50
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

    .line 52
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
