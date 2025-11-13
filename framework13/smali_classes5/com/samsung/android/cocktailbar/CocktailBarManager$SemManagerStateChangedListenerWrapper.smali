.class public Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;
.super Ljava/lang/Object;
.source "CocktailBarManager.java"

# interfaces
.implements Lcom/samsung/android/cocktailbar/CocktailBarManager$CocktailBarStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemManagerStateChangedListenerWrapper"
.end annotation


# instance fields
.field public final blacklist mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1808
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    .line 1809
    return-void
.end method


# virtual methods
.method public blacklist onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V
    .locals 2
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .line 1813
    new-instance v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;-><init>()V

    .line 1814
    .local v0, "semStateInfo":Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->position:I

    .line 1815
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->visibility:I

    .line 1816
    iget v1, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;->windowType:I

    .line 1817
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SemManagerStateChangedListenerWrapper;->mSemlistener:Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/SemCocktailBarStateInfo;)V

    .line 1818
    return-void
.end method
