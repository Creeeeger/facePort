.class public final Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;
.super Ljava/lang/Object;
.source "ActivityEmbeddingUtils.java"


# direct methods
.method public static isActivityEmbedded(Landroid/app/Activity;)Z
    .locals 1

    .line 93
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public static shouldHideNavigateUpButton(Landroid/app/Activity;Z)Z
    .locals 2

    .line 106
    invoke-static {}, Landroidx/core/os/BuildCompat;->isAtLeastT()Z

    move-result v0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "settings_hide_second_layer_page_navigate_up_button_in_two_pane"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 121
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/settingslib/activityembedding/ActivityEmbeddingUtils;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method
