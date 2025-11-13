.class Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
.super Ljava/lang/Object;
.source "LayerDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/LayerDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChildDrawable"
.end annotation


# instance fields
.field public greylist-max-o mDensity:I

.field public greylist mDrawable:Landroid/graphics/drawable/Drawable;

.field public greylist-max-o mGravity:I

.field public greylist-max-o mHeight:I

.field public greylist-max-o mId:I

.field public greylist-max-o mInsetB:I

.field public greylist-max-o mInsetE:I

.field public greylist-max-o mInsetL:I

.field public greylist-max-o mInsetR:I

.field public greylist-max-o mInsetS:I

.field public greylist-max-o mInsetT:I

.field public greylist-max-o mThemeAttrs:[I

.field public greylist-max-o mWidth:I


# direct methods
.method constructor greylist-max-o <init>(I)V
    .locals 2
    .param p1, "density"    # I

    .line 1897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1890
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1891
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1892
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1893
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1894
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1895
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1898
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1899
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/graphics/drawable/LayerDrawable$ChildDrawable;Landroid/graphics/drawable/LayerDrawable;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "orig"    # Landroid/graphics/drawable/LayerDrawable$ChildDrawable;
    .param p2, "owner"    # Landroid/graphics/drawable/LayerDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1888
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1890
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1891
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1892
    const/4 v0, -0x1

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1893
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1894
    const/4 v1, 0x0

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1895
    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1903
    iget-object v0, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1905
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 1906
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 1907
    .local v1, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v1, :cond_0

    .line 1908
    move-object v2, v0

    .line 1909
    .local v2, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1911
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    const-string v4, "LayerDrawable"

    const-string v5, "Invalid drawable added to LayerDrawable! Drawable already belongs to another owner but does not expose a constant state."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1915
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-eqz p3, :cond_1

    .line 1916
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1918
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1920
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLayoutDirection()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 1921
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1922
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1926
    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1927
    .end local v1    # "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    goto :goto_1

    .line 1928
    .end local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v2, 0x0

    .line 1931
    .restart local v2    # "clone":Landroid/graphics/drawable/Drawable;
    :goto_1
    iput-object v2, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 1932
    iget-object v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    iput-object v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    .line 1933
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1934
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1935
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1936
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1937
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1938
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1939
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1940
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1941
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mGravity:I

    .line 1942
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mId:I

    .line 1944
    iget v1, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    invoke-static {p3, v1}, Landroid/graphics/drawable/Drawable;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1945
    iget v3, p1, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v3, v1, :cond_4

    .line 1946
    invoke-direct {p0, v3, v1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1948
    :cond_4
    return-void
.end method

.method private greylist-max-o applyDensityScaling(II)V
    .locals 3
    .param p1, "sourceDensity"    # I
    .param p2, "targetDensity"    # I

    .line 1965
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetL:I

    .line 1966
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetT:I

    .line 1967
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetR:I

    .line 1968
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetB:I

    .line 1969
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    const/high16 v2, -0x80000000

    if-eq v0, v2, :cond_0

    .line 1970
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetS:I

    .line 1972
    :cond_0
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    if-eq v0, v2, :cond_1

    .line 1973
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mInsetE:I

    .line 1975
    :cond_1
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 1976
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mWidth:I

    .line 1978
    :cond_2
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    if-lez v0, :cond_3

    .line 1979
    invoke-static {v0, p1, p2, v1}, Landroid/graphics/drawable/Drawable;->scaleFromDensity(IIIZ)I

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mHeight:I

    .line 1981
    :cond_3
    return-void
.end method


# virtual methods
.method public greylist-max-o canApplyTheme()Z
    .locals 1

    .line 1951
    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mThemeAttrs:[I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1952
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1951
    :goto_1
    return v0
.end method

.method public final greylist-max-o setDensity(I)V
    .locals 1
    .param p1, "targetDensity"    # I

    .line 1956
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    if-eq v0, p1, :cond_0

    .line 1957
    iget v0, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1958
    .local v0, "sourceDensity":I
    iput p1, p0, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->mDensity:I

    .line 1960
    invoke-direct {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable$ChildDrawable;->applyDensityScaling(II)V

    .line 1962
    .end local v0    # "sourceDensity":I
    :cond_0
    return-void
.end method
