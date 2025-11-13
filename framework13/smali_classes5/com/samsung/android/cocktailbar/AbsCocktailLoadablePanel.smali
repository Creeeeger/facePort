.class public abstract Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.super Ljava/lang/Object;
.source "AbsCocktailLoadablePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;,
        Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    }
.end annotation


# static fields
.field public static final blacklist LOADABLE_CONTENT_CLASS:Ljava/lang/String; = "content"

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final blacklist PANEL_STATE_HIDE:I = 0x1

.field public static final blacklist PANEL_STATE_VISIBLE:I

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist mCocktailContext:Landroid/content/Context;

.field protected blacklist mContext:Landroid/content/Context;

.field private blacklist mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

.field private blacklist mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 115
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 102
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 104
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 106
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 126
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mCocktailContext:Landroid/content/Context;

    .line 128
    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    return-object v0
.end method

.method public blacklist getOnCocktailClickHander()Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    return-object v0
.end method

.method public abstract blacklist getView()Landroid/view/View;
.end method

.method public blacklist onChangedDisplayPolicy(I)V
    .locals 0
    .param p1, "newDisplayPolicy"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 220
    return-void
.end method

.method public blacklist onChangedReversedView(Z)V
    .locals 0
    .param p1, "isReversedViewMode"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    return-void
.end method

.method public abstract blacklist onClosePanel()V
.end method

.method public blacklist onOrientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    return-void
.end method

.method public blacklist onPanelVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 187
    return-void
.end method

.method public blacklist setData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 197
    return-void
.end method

.method public blacklist setListener(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 134
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mListener:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$CocktailLoadablePanelListener;

    .line 135
    return-void
.end method

.method public blacklist setOnCocktailClickHandler(Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;)V
    .locals 0
    .param p1, "onCocktailClickHandler"    # Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 150
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->mOnCocktailClickHandler:Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel$OnCocktailClickHandler;

    .line 151
    return-void
.end method
