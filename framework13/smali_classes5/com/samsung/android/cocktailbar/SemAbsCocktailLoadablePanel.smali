.class public abstract Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "SemAbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;,
        Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;
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

    .line 19
    const-class v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 112
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 100
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 124
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 125
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 126
    return-void
.end method


# virtual methods
.method public abstract whitelist getView()Landroid/view/View;
.end method

.method public whitelist onConfigurationChanged(Landroid/content/res/Configuration;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "extraConfiguration"    # Landroid/os/Bundle;

    .line 216
    return-void
.end method

.method public abstract whitelist onCreate()V
.end method

.method public abstract whitelist onDestroy()V
.end method

.method public whitelist onPause()V
    .locals 0

    .line 174
    return-void
.end method

.method public whitelist onPostResume()V
    .locals 0

    .line 189
    return-void
.end method

.method public whitelist onReceiveContentInfo(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 197
    return-void
.end method

.method public whitelist onResume()V
    .locals 0

    .line 182
    return-void
.end method

.method public whitelist performOnClickInCocktailBar(Landroid/view/View;Landroid/app/PendingIntent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;

    .line 228
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    if-eqz v0, :cond_0

    .line 229
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;)Z

    move-result v0

    return v0

    .line 231
    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string v1, "CocktailClickHandler was not set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist requestCocktailBarOpen()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x1

    const-string/jumbo v2, "open_panel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;->sendOptions(Landroid/os/Bundle;)V

    .line 244
    .end local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 245
    :cond_0
    sget-object v0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    const-string v1, "CocktailLoadablePanelListener was not set yet"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 135
    return-void
.end method

.method public blacklist setOnCocktailClickHander(Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0
    .param p1, "onCocktailClickHandler"    # Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 145
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/SemAbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 146
    return-void
.end method
