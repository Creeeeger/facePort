.class public Landroid/widget/SearchView$SearchAutoComplete;
.super Landroid/widget/AutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private greylist-max-o mHasPendingShowSoftInputRequest:Z

.field final greylist-max-o mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

.field private greylist-max-o mSearchView:Landroid/widget/SearchView;

.field private greylist-max-o mThreshold:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$misEmpty(Landroid/widget/SearchView$SearchAutoComplete;)Z
    .locals 0

    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetImeVisibility(Landroid/widget/SearchView$SearchAutoComplete;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 2311
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2308
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 2312
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2313
    return-void
.end method

.method public constructor greylist-max-r <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2317
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2308
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 2318
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2319
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I

    .line 2322
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2308
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 2323
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2324
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttrs"    # I
    .param p4, "defStyleRes"    # I

    .line 2328
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2308
    new-instance v0, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/widget/SearchView$SearchAutoComplete$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SearchView$SearchAutoComplete;)V

    iput-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    .line 2329
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2330
    return-void
.end method

.method private greylist-max-o getSearchViewTextMinWidthDp()I
    .locals 5

    .line 2441
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2442
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2443
    .local v1, "width":I
    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2444
    .local v2, "height":I
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2445
    .local v3, "orientation":I
    const/16 v4, 0x3c0

    if-lt v1, v4, :cond_0

    const/16 v4, 0x2d0

    if-lt v2, v4, :cond_0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 2447
    const/16 v4, 0x100

    return v4

    .line 2448
    :cond_0
    const/16 v4, 0x258

    if-ge v1, v4, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_1

    const/16 v4, 0x1e0

    if-lt v2, v4, :cond_1

    goto :goto_0

    .line 2451
    :cond_1
    const/16 v4, 0xa0

    return v4

    .line 2449
    :cond_2
    :goto_0
    const/16 v4, 0xc0

    return v4
.end method

.method private greylist-max-o isEmpty()Z
    .locals 1

    .line 2354
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .line 2483
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2484
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2485
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2486
    iget-object v2, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2487
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2488
    return-void

    .line 2491
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2494
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2495
    iget-object v2, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2496
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2497
    return-void

    .line 2502
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2503
    return-void
.end method

.method private greylist-max-o showSoftInputIfNecessary()V
    .locals 2

    .line 2474
    iget-boolean v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v0, :cond_0

    .line 2475
    nop

    .line 2476
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2477
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2478
    iput-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2480
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist checkInputConnectionProxy(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 2470
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist enoughToFilter()Z
    .locals 1

    .line 2416
    iget v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_1

    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method synthetic blacklist lambda$new$0$android-widget-SearchView$SearchAutoComplete()V
    .locals 0

    .line 2308
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->showSoftInputIfNecessary()V

    return-void
.end method

.method public whitelist onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;

    .line 2460
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2461
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    if-eqz v1, :cond_0

    .line 2462
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2463
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mRunShowSoftInputIfNecessary:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->post(Ljava/lang/Runnable;)Z

    .line 2465
    :cond_0
    return-object v0
.end method

.method protected whitelist onFinishInflate()V
    .locals 3

    .line 2334
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->onFinishInflate()V

    .line 2335
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2336
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    nop

    .line 2337
    invoke-direct {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v1

    int-to-float v1, v1

    .line 2336
    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    .line 2338
    return-void
.end method

.method protected whitelist onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2406
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2407
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onTextFocusChanged()V

    .line 2408
    return-void
.end method

.method public whitelist onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 2421
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 2423
    .local v0, "consume":Z
    iget-object v1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v1}, Landroid/widget/SearchView;->-$$Nest$fgetmThemeIsDeviceDefault(Landroid/widget/SearchView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2424
    return v0

    .line 2427
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 2428
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2432
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 2434
    :cond_1
    return v0
.end method

.method public whitelist onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .line 2381
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onWindowFocusChanged(Z)V

    .line 2383
    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semIsForceHideSoftInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    return-void

    .line 2390
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2395
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SearchView$SearchAutoComplete;->mHasPendingShowSoftInputRequest:Z

    .line 2398
    invoke-virtual {p0}, Landroid/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2399
    invoke-virtual {p0, v0}, Landroid/widget/SearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    .line 2402
    :cond_1
    return-void
.end method

.method public whitelist performCompletion()V
    .locals 0

    .line 2373
    return-void
.end method

.method protected whitelist replaceText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 2363
    return-void
.end method

.method greylist-max-o setSearchView(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "searchView"    # Landroid/widget/SearchView;

    .line 2341
    iput-object p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/widget/SearchView;

    .line 2342
    return-void
.end method

.method public whitelist setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .line 2346
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 2347
    iput p1, p0, Landroid/widget/SearchView$SearchAutoComplete;->mThreshold:I

    .line 2348
    return-void
.end method
