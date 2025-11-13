.class public Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnCocktailClickHandler"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 47
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 55
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    const/high16 v5, 0x10000000

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v1    # "context":Landroid/content/Context;
    nop

    .line 64
    const/4 v0, 0x1

    return v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send pending intent due to unknown exception: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return v0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-static {}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Cannot send pending intent: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return v0
.end method
