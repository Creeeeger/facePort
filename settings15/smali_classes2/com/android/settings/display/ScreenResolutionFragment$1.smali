.class public final Lcom/android/settings/display/ScreenResolutionFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    new-instance p0, Lcom/android/settings/display/ScreenResolutionController;

    const-string v0, "screen_resolution"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ScreenResolutionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/display/ScreenResolutionController;->checkSupportedResolutions()Z

    move-result p0

    return p0
.end method
