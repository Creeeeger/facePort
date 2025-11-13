.class public abstract Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "SemAbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;,
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;
    }
.end annotation


# static fields
.field public static final whitelist EXTRA_CONFIGURATION_KEY_POSITION:Ljava/lang/String; = "cocktail_position"

.field public static final blacklist POSITION_ON_BOTTOM:I = 0x3

.field public static final blacklist POSITION_ON_LEFT:I = 0x0

.field public static final blacklist POSITION_ON_RIGHT:I = 0x1

.field public static final blacklist POSITION_ON_TOP:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist mCocktailContext:Landroid/content/Context;

.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private blacklist mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract whitelist getView()Landroid/view/View;
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDestroy()V
.end method

.method public whitelist onPause()V
    .locals 0

    return-void
.end method

.method public whitelist onPostResume()V
    .locals 0

    return-void
.end method

.method public whitelist onReceiveContentInfo(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public whitelist onResume()V
    .locals 0

    return-void
.end method

.method public whitelist performOnClickInCocktailBar(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string v1, "CocktailClickHandler was not set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestCocktailBarOpen()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "open_panel"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;->sendOptions(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string v1, "CocktailLoadablePanelListener was not set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-void
.end method

.method public blacklist setOnCocktailClickHander(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-void
.end method
