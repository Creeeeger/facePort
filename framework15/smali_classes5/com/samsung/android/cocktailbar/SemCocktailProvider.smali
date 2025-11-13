.class public Lcom/samsung/android/cocktailbar/SemCocktailProvider;
.super Landroid/content/BroadcastReceiver;
.source "SemCocktailProvider.java"


# static fields
.field private static final blacklist ACTION_COCKTAIL_DISABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

.field private static final blacklist ACTION_COCKTAIL_ENABLED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

.field private static final blacklist ACTION_COCKTAIL_UPDATE:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

.field private static final blacklist ACTION_COCKTAIL_UPDATE_V2:Ljava/lang/String; = "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

.field private static final blacklist ACTION_COCKTAIL_VISIBILITY_CHANGED:Ljava/lang/String; = "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

.field private static final blacklist EXTRA_COCKTAIL_ID:Ljava/lang/String; = "cocktailId"

.field private static final blacklist EXTRA_COCKTAIL_IDS:Ljava/lang/String; = "cocktailIds"

.field private static final blacklist EXTRA_COCKTAIL_VISIBILITY:Ljava/lang/String; = "cocktailVisibility"

.field private static final blacklist TAG:Ljava/lang/String; = "SemCocktailProvider"


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onCocktailDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public whitelist onCocktailEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public whitelist onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0

    return-void
.end method

.method public whitelist onCocktailVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method

.method public blacklist onDisabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public blacklist onEnabled(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.samsung.android.cocktail.v2.action.COCKTAIL_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_ENABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailEnabled(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_DISABLED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailDisabled(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    const-string v1, "com.samsung.android.cocktail.action.COCKTAIL_VISIBILITY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "cocktailId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "cocktailVisibility"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailVisibilityChanged(Landroid/content/Context;II)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onVisibilityChanged(Landroid/content/Context;II)V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "cocktailIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onCocktailUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v3

    invoke-virtual {p0, p1, v3, v2}, Lcom/samsung/android/cocktailbar/SemCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V

    :cond_4
    nop

    :cond_5
    :goto_1
    return-void
.end method

.method public blacklist onUpdate(Landroid/content/Context;Lcom/samsung/android/cocktailbar/SemCocktailBarManager;[I)V
    .locals 0

    return-void
.end method

.method public blacklist onVisibilityChanged(Landroid/content/Context;II)V
    .locals 0

    return-void
.end method
