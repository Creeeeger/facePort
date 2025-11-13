.class public Lcom/samsung/android/settings/inputmethod/InputMethodUtils;
.super Ljava/lang/Object;
.source "InputMethodUtils.java"


# static fields
.field public static final HOME_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.launcher.settings"

    .line 11
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->HOME_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public static getMouseButtonFeatureTitle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, ""

    goto :goto_0

    .line 69
    :pswitch_0
    sget p1, Lcom/android/settings/R$string;->open_app:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 63
    :pswitch_1
    sget p1, Lcom/android/settings/R$string;->open_quick_settings:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 60
    :pswitch_2
    sget p1, Lcom/android/settings/R$string;->view_notifications:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 57
    :pswitch_3
    sget p1, Lcom/android/settings/R$string;->back_button:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 54
    :pswitch_4
    sget p1, Lcom/android/settings/R$string;->recents_button:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 51
    :pswitch_5
    sget p1, Lcom/android/settings/R$string;->home_button:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_6
    sget p1, Lcom/android/settings/R$string;->forward:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 45
    :pswitch_7
    sget p1, Lcom/android/settings/R$string;->app_defined_function:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 42
    :pswitch_8
    sget p1, Lcom/android/settings/R$string;->show_the_apps_screen:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 39
    :pswitch_9
    sget p1, Lcom/android/settings/R$string;->open_contextual_menu:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 36
    :pswitch_a
    sget p1, Lcom/android/settings/R$string;->none:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isHomeOnlyModeEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/settings/inputmethod/InputMethodUtils;->HOME_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "get_home_mode"

    const-string v2, "home_mode"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, ""

    .line 80
    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "home_only_mode"

    .line 81
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
