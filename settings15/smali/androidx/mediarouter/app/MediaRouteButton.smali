.class public final Landroidx/mediarouter/app/MediaRouteButton;
.super Landroid/view/View;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final CHECKABLE_STATE_SET:[I

.field public static final CHECKED_STATE_SET:[I

.field public static sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

.field public static final sRemoteIndicatorCache:Landroid/util/SparseArray;


# instance fields
.field public mAlwaysVisible:Z

.field public mAttachedToWindow:Z

.field public final mButtonTint:Landroid/content/res/ColorStateList;

.field public final mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

.field public mCheatSheetEnabled:Z

.field public mConnectionState:I

.field public mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

.field public final mMinHeight:I

.field public final mMinWidth:I

.field public mRemoteIndicator:Landroid/graphics/drawable/Drawable;

.field public mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

.field public mRemoteIndicatorResIdToLoad:I

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field public mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    const v0, 0x10100a0

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    const v0, 0x101009f

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getRouterThemeId(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f040429

    invoke-static {v0, p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->getThemeResource(Landroid/content/Context;I)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-direct {v1, v0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    :cond_0
    const/4 v4, 0x0

    const v6, 0x7f04041d

    invoke-direct {p0, v0, v4, v6}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    sget-object p1, Landroidx/mediarouter/app/MediaRouteDialogFactory;->sDefault:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    const/4 p1, 0x0

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Landroidx/mediarouter/R$styleable;->MediaRouteButton:[I

    invoke-virtual {v0, v4, v3, v6, p1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Landroidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v8, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_1
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object v1

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    new-instance v1, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-direct {v1, p0}, Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteButton;)V

    iput-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    sget-object v1, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    if-nez v1, :cond_2

    new-instance v1, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v8, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v8, p1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    const/4 v0, 0x1

    invoke-virtual {v8, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    invoke-virtual {v8, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v8, v2, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    if-eqz v2, :cond_3

    sget-object v3, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    invoke-virtual {p0, v2}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    if-eqz v1, :cond_5

    sget-object v2, Landroidx/mediarouter/app/MediaRouteButton;->sRemoteIndicatorCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/mediarouter/app/MediaRouteButton;->setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_4
    new-instance v2, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v2, v1, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    return-void
.end method

.method public final loadRemoteIndicatorIfNeeded()V
    .locals 4

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    new-instance v0, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;-><init>(Landroidx/mediarouter/app/MediaRouteButton;ILandroid/content/Context;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    iput v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorResIdToLoad:I

    sget-object p0, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_1
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshRoute()V

    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v2, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onCreateDrawableState(I)[I
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object p1

    iget p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKED_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    goto :goto_0

    :cond_1
    sget-object p0, Landroidx/mediarouter/app/MediaRouteButton;->CHECKABLE_STATE_SET:[I

    invoke-static {p1, p0}, Landroid/view/View;->mergeDrawableStates([I[I)[I

    :goto_0
    return-object p1
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCallback:Landroidx/mediarouter/app/MediaRouteButton$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :cond_0
    sget-object v0, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mButtons:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v1, v0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    sub-int/2addr v3, v2

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    add-int/2addr v4, v1

    add-int/2addr v5, v3

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    iget v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinWidth:I

    iget-object v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroidx/mediarouter/app/MediaRouteButton;->mMinHeight:I

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v4, v5

    :cond_1
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x80000000

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_3
    :goto_1
    if-eq p2, v5, :cond_4

    if-eq p2, v4, :cond_5

    move v1, v3

    goto :goto_2

    :cond_4
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_5
    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->showDialog()Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final refreshRoute()V
    .locals 6

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mConnectionState:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    const/4 v3, 0x1

    if-eq v1, v0, :cond_1

    iput v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->updateContentDescription()V

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    :cond_2
    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->loadRemoteIndicatorIfNeeded()V

    :cond_3
    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/mediarouter/media/MediaRouter;->isRouteAvailable(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_6
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    iget-boolean p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz p0, :cond_8

    if-nez v1, :cond_7

    if-ne v0, v3, :cond_a

    :cond_7
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p0

    if-nez p0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_2

    :cond_8
    const/4 p0, 0x2

    if-ne v0, p0, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_9
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_a
    :goto_2
    return-void
.end method

.method public final refreshVisibility()V
    .locals 2

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAlwaysVisible:Z

    if-nez v1, :cond_0

    sget-object v1, Landroidx/mediarouter/app/MediaRouteButton;->sConnectivityReceiver:Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;

    iget-boolean v1, v1, Landroidx/mediarouter/app/MediaRouteButton$ConnectivityReceiver;->mIsConnected:Z

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public final setRemoteIndicatorDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicatorLoader:Landroidx/mediarouter/app/MediaRouteButton$RemoteIndicatorLoader;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteButton;->mButtonTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iget p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p0, v1, :cond_7

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_6
    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/AnimationDrawable;->selectDrawable(I)Z

    :cond_7
    :goto_1
    return-void
.end method

.method public final setVisibility(I)V
    .locals 0

    iput p1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mVisibility:I

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteButton;->refreshVisibility()V

    return-void
.end method

.method public final showDialog()Z
    .locals 10

    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mAttachedToWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-boolean v0, v0, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->mTransferEnabled:Z

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings.panel.action.MEDIA_OUTPUT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.settings.panel.extra.PACKAGE_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "key_media_session_token"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x81

    if-eqz v6, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v3

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_2
    instance-of v4, v0, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_6

    instance-of v4, v0, Landroid/app/Activity;

    if-eqz v4, :cond_5

    check-cast v0, Landroid/app/Activity;

    goto :goto_3

    :cond_5
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    :goto_3
    instance-of v4, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v4, :cond_7

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_18

    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/mediarouter/media/MediaRouter;->checkCallingThread()V

    sget-object v4, Landroidx/mediarouter/media/MediaRouter;->sGlobal:Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;

    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$GlobalMediaRouter;->getSelectedRoute()Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v5

    const-string v6, "This must be called before creating dialog"

    const-string/jumbo v7, "selector must not be null"

    const-string/jumbo v8, "selector"

    const-string v9, "MediaRouteButton"

    if-nez v5, :cond_11

    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v4, v5}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_6

    :cond_8
    const-string v4, "android.support.v7.mediarouter:MediaRouteControllerDialogFragment"

    invoke-virtual {v0, v4}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string/jumbo p0, "showDialog(): Route controller dialog already showing!"

    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    iget-object v5, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;

    invoke-direct {v5}, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;-><init>()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz p0, :cond_10

    iget-object v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v7, :cond_c

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_a

    new-instance v9, Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-direct {v9, v7, v2}, Landroidx/mediarouter/media/MediaRouteSelector;-><init>(Landroid/os/Bundle;Ljava/util/List;)V

    move-object v2, v9

    goto :goto_5

    :cond_a
    sget-object v7, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    :goto_5
    iput-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_b
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-nez v2, :cond_c

    sget-object v2, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    :cond_c
    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v2, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iput-object p0, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_d

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :cond_d
    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v5, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v2, :cond_e

    iget-boolean v7, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    if-eqz v7, :cond_e

    check-cast v2, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    invoke-virtual {v2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_e
    iget-object p0, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-nez p0, :cond_f

    iput-boolean v1, v5, Landroidx/mediarouter/app/MediaRouteControllerDialogFragment;->mUseDynamicGroup:Z

    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, v1, v5, v4, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    goto :goto_8

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_6
    const-string v2, "android.support.v7.mediarouter:MediaRouteChooserDialogFragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_12

    const-string/jumbo p0, "showDialog(): Route chooser dialog already showing!"

    invoke-static {v9, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    iget-object v4, p0, Landroidx/mediarouter/app/MediaRouteButton;->mDialogFactory:Landroidx/mediarouter/app/MediaRouteDialogFactory;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;

    invoke-direct {v4}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;-><init>()V

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    if-eqz p0, :cond_17

    invoke-virtual {v4}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->ensureRouteSelector()V

    iget-object v5, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    iput-object p0, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_13

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    :cond_13
    iget-object v7, p0, Landroidx/mediarouter/media/MediaRouteSelector;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v8, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v5, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-eqz v5, :cond_15

    iget-boolean v7, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    if-eqz v7, :cond_14

    check-cast v5, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    goto :goto_7

    :cond_14
    check-cast v5, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    invoke-virtual {v5, p0}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V

    :cond_15
    :goto_7
    iget-object p0, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    if-nez p0, :cond_16

    iput-boolean v1, v4, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->mUseDynamicGroup:Z

    new-instance p0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {p0, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {p0, v1, v4, v2, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    :goto_8
    return v3

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The activity must be a subclass of FragmentActivity"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateContentDescription()V
    .locals 2

    iget v0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mConnectionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const v0, 0x7f14186e

    goto :goto_0

    :cond_0
    const v0, 0x7f14186c

    goto :goto_0

    :cond_1
    const v0, 0x7f14186d

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Landroidx/mediarouter/app/MediaRouteButton;->mCheatSheetEnabled:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteButton;->mRemoteIndicator:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
