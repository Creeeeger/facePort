.class public Lcom/samsung/android/app/SemLocalePicker;
.super Ljava/lang/Object;
.source "SemLocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static whitelist getAllLocales(Landroid/content/Context;)Ljava/util/List;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 80
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 82
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 83
    .local v1, "localeListFromLocalePicker":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    const/4 v2, 0x0

    .line 85
    .local v2, "localeInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;>;"
    if-eqz v1, :cond_2

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    .line 88
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 89
    .local v4, "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    if-eqz v4, :cond_1

    .line 90
    new-instance v5, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;

    invoke-direct {v5, v4, v0}, Lcom/samsung/android/app/SemLocalePicker$LocaleInfo;-><init>(Lcom/android/internal/app/LocalePicker$LocaleInfo;Lcom/samsung/android/app/SemLocalePicker$LocaleInfo-IA;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v4    # "info":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_1
    goto :goto_0

    .line 95
    :cond_2
    return-object v2
.end method

.method public static whitelist updateLocale(Ljava/util/Locale;)V
    .locals 0
    .param p0, "locale"    # Ljava/util/Locale;

    .line 105
    if-nez p0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 108
    return-void
.end method
