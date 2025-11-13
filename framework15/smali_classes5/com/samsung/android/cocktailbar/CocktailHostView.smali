.class public Lcom/samsung/android/cocktailbar/CocktailHostView;
.super Landroid/widget/FrameLayout;
.source "CocktailHostView.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "CocktailHostView"


# instance fields
.field private blacklist mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

.field private blacklist mCocktailId:I

.field private blacklist mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/cocktailbar/CocktailHostView;->setIsRootNamespace(Z)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/cocktailbar/CocktailHostView;->setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V

    return-void
.end method


# virtual methods
.method public blacklist getCocktail()Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public blacklist getCocktailId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    return v0
.end method

.method public blacklist setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    :cond_0
    return-void
.end method

.method public blacklist setUserId(I)V
    .locals 1

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public blacklist viewDataChanged(I)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/cocktailbar/CocktailHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/widget/AdapterView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    instance-of v3, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    invoke-interface {v3}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    return-void
.end method
