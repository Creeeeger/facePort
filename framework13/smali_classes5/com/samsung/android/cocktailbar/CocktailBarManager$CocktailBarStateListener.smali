.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateListener;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarStateListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 1834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1835
    return-void
.end method


# virtual methods
.method public blacklist onCocktailBarPositionChanged(I)V
    .locals 0
    .param p1, "position"    # I

    .line 1861
    return-void
.end method

.method public blacklist onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 0
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1845
    return-void
.end method

.method public blacklist onCocktailBarVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 1853
    return-void
.end method

.method public blacklist onCocktailBarWindowTypeChanged(I)V
    .locals 0
    .param p1, "windowType"    # I

    .line 1869
    return-void
.end method
