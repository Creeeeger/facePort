.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"

# interfaces
.implements Landroid/appwidget/AppWidgetHost$AppWidgetHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ViewApplyListener;,
        Landroid/appwidget/AppWidgetHostView$AdapterChildHostView;
    }
.end annotation


# static fields
.field private static final blacklist APPWIDGET_HOST_OPTIONS_HOST_TYPE:Ljava/lang/String; = "semHostType"

.field public static final blacklist APPWIDGET_HOST_TYPE_COVER:I = 0x4

.field public static final blacklist APPWIDGET_HOST_TYPE_HOME:I = 0x1

.field public static final blacklist APPWIDGET_HOST_TYPE_LOCK_AND_AOD:I = 0x2

.field private static final blacklist FIRST_RESOURCE_COLOR_ID:I = 0x106001d

.field private static final greylist-max-o INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

.field private static final blacklist KEY_INFLATION_ID:Ljava/lang/String; = "inflation_id"

.field private static final greylist-max-o KEY_JAILED_ARRAY:Ljava/lang/String; = "jail"

.field private static final blacklist LAST_RESOURCE_COLOR_ID:I = 0x106005d

.field static final greylist-max-o LOGD:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final greylist-max-o VIEW_MODE_CONTENT:I = 0x1

.field static final greylist-max-o VIEW_MODE_DEFAULT:I = 0x3

.field static final greylist-max-o VIEW_MODE_ERROR:I = 0x2

.field static final greylist-max-o VIEW_MODE_NOINIT:I


# instance fields
.field greylist mAppWidgetId:I

.field private greylist-max-o mAsyncExecutor:Ljava/util/concurrent/Executor;

.field blacklist mColorMappingChanged:Z

.field private blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field private blacklist mConfigChanged:Z

.field greylist-max-o mContext:Landroid/content/Context;

.field private blacklist mCurrentSize:Landroid/util/SizeF;

.field private blacklist mDelayedRestoredInflationId:J

.field private blacklist mDelayedRestoredState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mHostType:I

.field greylist mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private blacklist mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private blacklist mIsForcedOrientation:Z

.field private blacklist mIsPortrait:Z

.field private blacklist mLastConfig:Landroid/content/res/Configuration;

.field private greylist-max-o mLastExecutionSignal:Landroid/os/CancellationSignal;

.field private blacklist mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

.field private blacklist mLastInflatedRemoteViewsId:J

.field blacklist mLastViewIdToDataChanged:I

.field private blacklist mOnContentAppliedListener:Landroid/view/View$OnClickListener;

.field private blacklist mOnLightBackground:Z

.field greylist-max-o mRemoteContext:Landroid/content/Context;

.field greylist-max-o mView:Landroid/view/View;

.field greylist-max-o mViewMode:I


# direct methods
.method public static synthetic blacklist $r8$lambda$ANiJvgIz1XM_-hmPJEMfpw0WOpo(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onDefaultViewClicked(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_s0IkvzxWUOv94WhU9wUsmqvbUI(Landroid/appwidget/AppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$l7eDFQKASz2d_yJPtkoM0A31b5Q(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->lambda$getHandler$1(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAsyncExecutor(Landroid/appwidget/AppWidgetHostView;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentSize(Landroid/appwidget/AppWidgetHostView;)Landroid/util/SizeF;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInteractionHandler(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews$InteractionHandler;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastInflatedRemoteViews(Landroid/appwidget/AppWidgetHostView;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastExecutionSignal(Landroid/appwidget/AppWidgetHostView;Landroid/os/CancellationSignal;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLastInflatedRemoteViewsId(Landroid/appwidget/AppWidgetHostView;J)V
    .locals 0

    iput-wide p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mapplyContent(Landroid/appwidget/AppWidgetHostView;Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 2

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method private greylist-max-o applyContent(Landroid/view/View;ZLjava/lang/Exception;)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const-string v1, "AppWidgetHostView"

    const/4 v2, 0x2

    if-nez p1, :cond_2

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    const-string v3, "Error inflating RemoteViews"

    invoke-static {v1, v3, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object p1

    iput v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :cond_2
    if-nez p2, :cond_3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget v6, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v5, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v6, v7

    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v6, v7

    invoke-virtual {v4, v0, v0, v5, v6}, Landroid/view/View;->layout(IIII)V

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iput v2, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const-string v0, "Error on prepare/add Views"

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3
    :goto_0
    nop

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    if-eq v0, p1, :cond_4

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    :cond_4
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnContentAppliedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOnContentAppliedListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private blacklist clearResourcePackageCache(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    :try_start_0
    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    move-object p1, v0

    :cond_0
    const-string v0, "android.app.ContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "mMainThread"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-class v3, Landroid/app/ActivityThread;

    const-string/jumbo v4, "mResourcesManager"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-class v4, Landroid/app/ActivityThread;

    const-string/jumbo v5, "mResourcePackages"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v5, v4

    check-cast v5, Landroid/util/ArrayMap;

    invoke-virtual {v5, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v3

    nop

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to clear cache for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method private blacklist computeSizeFromLayout(IIII)Landroid/util/SizeF;
    .locals 5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    new-instance v1, Landroid/util/SizeF;

    sub-int v2, p3, p1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-int v3, p4, p2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v0

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    return-object v1
.end method

.method private greylist-max-o generateId()I
    .locals 2

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method private greylist-max-o getDefaultPadding()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-static {p0, p2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getDefaultPaddingForWidget(Landroid/content/Context;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->left:I

    const v1, 0x1050164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->right:I

    const v1, 0x1050165

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    const v1, 0x1050162

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private blacklist getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;
    .locals 1

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda0;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews$InteractionHandler;)V

    return-object v0
.end method

.method private blacklist handleViewError()V
    .locals 5

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/appwidget/AppWidgetHostView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/appwidget/AppWidgetHostView;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingLeft:I

    add-int/2addr v1, v3

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingRight:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/appwidget/AppWidgetHostView;->mPaddingBottom:I

    add-int/2addr v3, v4

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/view/View;->layout(IIII)V

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    const/4 v1, 0x2

    iput v1, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    return-void
.end method

.method private greylist hidden_semSetOnContentAppliedListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnContentAppliedListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private greylist hidden_semSetOptions(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "semHostType"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mHostType:I

    return-void
.end method

.method private greylist-max-o inflateAsync(Landroid/widget/RemoteViews;)V
    .locals 13

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semAppWidgeAdditionOptions:I

    if-ne v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    const-string v4, "AppWidgetHostView"

    const-string/jumbo v5, "skip reapplyAsync requested"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    const/4 v5, -0x1

    iput v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->hidden_semAppWidgeAdditionOptions:I

    :cond_2
    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    if-nez v4, :cond_3

    if-nez v1, :cond_3

    :try_start_0
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    invoke-direct {v9, p0, p1, v0, v2}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v5, p1

    invoke-virtual/range {v5 .. v12}, Landroid/widget/RemoteViews;->reapplyAsync(Landroid/content/Context;Landroid/view/View;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-nez v2, :cond_4

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;

    invoke-direct {v8, p0, p1, v0, v3}, Landroid/appwidget/AppWidgetHostView$ViewApplyListener;-><init>(Landroid/appwidget/AppWidgetHostView;Landroid/widget/RemoteViews;IZ)V

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v4 .. v11}, Landroid/widget/RemoteViews;->applyAsync(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/concurrent/Executor;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/os/CancellationSignal;

    move-result-object v2

    iput-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_4
    iput-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    return-void
.end method

.method private blacklist isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$getHandler$1(Landroid/widget/RemoteViews$InteractionHandler;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->noteAppWidgetTapped(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p3, p4}, Landroid/widget/RemoteViews$InteractionHandler;->onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result v1

    return v1

    :cond_1
    nop

    invoke-virtual {p4, p2}, Landroid/widget/RemoteViews$RemoteResponse;->getLaunchOptions(Landroid/view/View;)Landroid/util/Pair;

    move-result-object v1

    invoke-static {p2, p3, v1}, Landroid/widget/RemoteViews;->startPendingIntent(Landroid/view/View;Landroid/app/PendingIntent;Landroid/util/Pair;)Z

    move-result v1

    return v1
.end method

.method static synthetic blacklist lambda$static$0(Ljava/lang/Class;)Z
    .locals 1

    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private blacklist onDefaultViewClicked(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/pm/LauncherActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-static {p1}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/content/pm/LauncherApps;->startMainActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private blacklist reapplyLastRemoteViews()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method private blacklist setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    return-void
.end method


# virtual methods
.method protected greylist-max-o applyRemoteViews(Landroid/widget/RemoteViews;Z)V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v3}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_0
    if-nez p1, :cond_2

    iget v3, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    goto/16 :goto_2

    :cond_2
    iget-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mIsForcedOrientation:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/appwidget/AppWidgetHostView;->mIsPortrait:Z

    invoke-virtual {p1, v3}, Landroid/widget/RemoteViews;->setOrientation(Z)V

    :cond_3
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v3

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getDarkTextViews()Landroid/widget/RemoteViews;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    invoke-direct {p0, v3}, Landroid/appwidget/AppWidgetHostView;->inflateAsync(Landroid/widget/RemoteViews;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/RemoteViews;->canRecycleView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    if-nez v4, :cond_6

    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)V

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    move-object v1, v4

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    :cond_6
    :goto_0
    if-nez v1, :cond_7

    :try_start_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    move-object v4, v3

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/util/SizeF;Landroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v3, p1}, Landroid/widget/RemoteViews;->computeUniqueId(Landroid/widget/RemoteViews;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v2, v4

    :cond_7
    :goto_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    const/4 v4, 0x1

    iput v4, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    :goto_2
    invoke-direct {p0, v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->applyContent(Landroid/view/View;ZLjava/lang/Exception;)V

    return-void
.end method

.method public blacklist createSharedElementActivityOptions([I[Ljava/lang/String;Landroid/content/Intent;)Landroid/app/ActivityOptions;
    .locals 8

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return-object v2

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_3

    aget v5, p1, v4

    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    aget-object v6, p2, v4

    invoke-static {v5, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    aget-object v6, p2, v4

    invoke-static {v5}, Landroid/widget/RemoteViews;->getSourceBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const-string v2, "android.widget.extra.SHARED_ELEMENT_BOUNDS"

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Landroid/util/Pair;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/util/Pair;

    invoke-static {v2, v4}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;[Landroid/util/Pair;)Landroid/app/ActivityOptions;

    move-result-object v2

    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    return-object v2

    :cond_4
    return-object v2
.end method

.method protected whitelist dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drawing view failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda1;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method protected whitelist dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    instance-of v4, v0, Landroid/os/Bundle;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Landroid/os/Bundle;

    const-string/jumbo v5, "jail"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    const-string v5, "inflation_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    :cond_0
    if-nez v1, :cond_1

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v4

    :cond_1
    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    iput-wide v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->restoreInstanceState()V

    return-void
.end method

.method protected whitelist dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "jail"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    const-string v2, "inflation_id"

    iget-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    move-result v2

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v1
.end method

.method public whitelist getAppWidgetId()I
    .locals 1

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    return v0
.end method

.method public whitelist getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method protected whitelist getDefaultView()Landroid/view/View;
    .locals 11

    const-string v0, "appWidgetCategory"

    const-string v1, "AppWidgetHostView"

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    invoke-virtual {v5, v4}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    move-object v5, v6

    sget-object v6, Landroid/appwidget/AppWidgetHostView;->INFLATER_FILTER:Landroid/view/LayoutInflater$Filter;

    invoke-virtual {v5, v6}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    iget v7, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v6, v7}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v8, v8, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_1

    iget-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget v9, v9, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    if-nez v9, :cond_0

    move v10, v8

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_0
    move v8, v10

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v5, v8, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    instance-of v0, v2, Landroid/widget/AdapterView;

    if-nez v0, :cond_2

    new-instance v0, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/appwidget/AppWidgetHostView$$ExternalSyntheticLambda2;-><init>(Landroid/appwidget/AppWidgetHostView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    goto :goto_1

    :cond_3
    const-string v0, "can\'t inflate defaultView because mInfo is missing"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error inflating AppWidget "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    move-result-object v2

    :cond_5
    return-object v2
.end method

.method protected whitelist getErrorView()Landroid/view/View;
    .locals 3

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, 0x10405b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method public blacklist getHostType()I
    .locals 1

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mHostType:I

    return v0
.end method

.method protected blacklist getRemoteContextEnsuringCorrectCachedApkPath()Landroid/content/Context;
    .locals 9

    const-string v0, " not found"

    const-string v1, "Package name "

    const-string v2, "AppWidgetHostView"

    const/4 v3, 0x0

    const/4 v4, 0x4

    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v5}, Landroid/app/LoadedApk;->checkAndUpdateApkPaths(Landroid/content/pm/ApplicationInfo;)V

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v7, v6}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v6

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to get RemoteContext."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    if-eqz v3, :cond_2

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v5}, Landroid/appwidget/AppWidgetHostView;->clearResourcePackageCache(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    :cond_1
    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v6, v7

    nop

    :try_start_2
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v6, v4}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v0

    :catch_1
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    :catch_2
    move-exception v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0

    :catch_3
    move-exception v0

    const-string v1, "Error trying to create the remote context."

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v1

    :catch_4
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastConfig:Landroid/content/res/Configuration;

    iput-boolean v1, p0, Landroid/appwidget/AppWidgetHostView;->mConfigChanged:Z

    :goto_0
    return-void
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected whitelist onLayout(ZIIII)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/appwidget/AppWidgetHostView;->computeSizeFromLayout(IIII)Landroid/util/SizeF;

    move-result-object v1

    iput-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mCurrentSize:Landroid/util/SizeF;

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RemoteViews;->getRemoteViewsToApplyIfDifferent(Landroid/util/SizeF;Landroid/util/SizeF;)Landroid/widget/RemoteViews;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getMeasuredHeight()I

    move-result v3

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetHostView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppWidgetHostView"

    const-string v2, "Remote provider threw runtime exception, using error view instead."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->handleViewError()V

    :goto_0
    return-void
.end method

.method public blacklist onUpdateProviderInfo(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public blacklist onViewDataChanged(I)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "viewDataChanged, viewId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", v = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppWidgetHostView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    :goto_1
    const/4 v3, -0x1

    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    goto :goto_2

    :cond_2
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastViewIdToDataChanged:I

    const-string/jumbo v1, "view is null, will retry when view inflating is finished."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method protected whitelist prepareView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    :cond_0
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist resetColorResources()V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorMappingChanged:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    :cond_0
    return-void
.end method

.method blacklist restoreInstanceState()V
    .locals 7

    iget-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    iget-wide v5, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViewsId:J

    cmp-long v5, v0, v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iput-wide v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredInflationId:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mDelayedRestoredState:Landroid/util/SparseArray;

    :try_start_0
    invoke-super {p0, v2}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to restoreInstanceState for widget id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v5, :cond_1

    const-string/jumbo v5, "null"

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AppWidgetHostView"

    invoke-static {v5, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_2
    :goto_2
    return-void
.end method

.method public blacklist semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->semDispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public whitelist semForceOrientation(ZZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force orientation - forced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPortrait="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppWidgetHostView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mIsForcedOrientation:Z

    iget-boolean v0, p0, Landroid/appwidget/AppWidgetHostView;->mIsForcedOrientation:Z

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Landroid/appwidget/AppWidgetHostView;->mIsPortrait:Z

    :cond_0
    return-void
.end method

.method public whitelist setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5

    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040f08

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public whitelist setColorResources(Landroid/util/SparseIntArray;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$ColorResources;->getColorMapping()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/appwidget/AppWidgetHostView;->isSameColorMapping(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setColorResources(Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method public blacklist setColorResources(Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->reapplyLastRemoteViews()V

    return-void
.end method

.method public blacklist setColorResourcesNoReapply(Landroid/widget/RemoteViews$ColorResources;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setColorResourcesStates(Landroid/widget/RemoteViews$ColorResources;)V

    return-void
.end method

.method public whitelist setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mLastExecutionSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mAsyncExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public blacklist setInteractionHandler(Landroid/widget/RemoteViews$InteractionHandler;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;->getHandler(Landroid/widget/RemoteViews$InteractionHandler;)Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-void
.end method

.method public whitelist setOnLightBackground(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnLightBackground:Z

    return-void
.end method

.method public whitelist updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 2

    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mLastInflatedRemoteViews:Landroid/widget/RemoteViews;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/appwidget/AppWidgetHostView;->applyRemoteViews(Landroid/widget/RemoteViews;Z)V

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/SemDualAppManager;->drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V

    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->drawKnoxAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method

.method public whitelist updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    return-void
.end method

.method public greylist-max-r updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    float-to-int v5, v5

    const/4 v6, 0x0

    if-eqz p6, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    sub-int v7, p2, v7

    if-eqz p6, :cond_2

    move v8, v6

    goto :goto_2

    :cond_2
    move v8, v5

    :goto_2
    sub-int v8, p3, v8

    if-eqz p6, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    sub-int v9, p4, v9

    if-eqz p6, :cond_4

    goto :goto_4

    :cond_4
    move v6, v5

    :goto_4
    sub-int v6, p5, v6

    iget-object v10, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    iget v11, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v10, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "appWidgetMinWidth"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "appWidgetMaxHeight"

    move-object/from16 p1, v2

    const-string v2, "appWidgetMaxWidth"

    move/from16 v16, v3

    const-string v3, "appWidgetMinHeight"

    if-ne v7, v14, :cond_5

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v8, v14, :cond_5

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v9, v14, :cond_5

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    if-eq v6, v14, :cond_6

    :cond_5
    const/4 v12, 0x1

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v1, v13, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v3, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v15, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "appWidgetSizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public whitelist updateAppWidgetSize(Landroid/os/Bundle;Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/util/SizeF;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    invoke-direct/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultPadding()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const v7, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v8, 0x0

    const v9, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/SizeF;

    new-instance v14, Landroid/util/SizeF;

    invoke-virtual {v13}, Landroid/util/SizeF;->getWidth()F

    move-result v15

    sub-float/2addr v15, v4

    move-object/from16 v16, v2

    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(FF)F

    move-result v15

    invoke-virtual {v13}, Landroid/util/SizeF;->getHeight()F

    move-result v17

    move/from16 v18, v3

    sub-float v3, v17, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v14, v15, v2}, Landroid/util/SizeF;-><init>(FF)V

    move-object v2, v14

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-virtual {v2}, Landroid/util/SizeF;->getWidth()F

    move-result v3

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-virtual {v2}, Landroid/util/SizeF;->getHeight()F

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v10

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move/from16 v3, v18

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    move-object/from16 v16, v2

    move/from16 v18, v3

    iget v2, v0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "appWidgetSizes"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "appWidgetMinWidth"

    float-to-int v13, v7

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "appWidgetMinHeight"

    float-to-int v13, v9

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "appWidgetMaxWidth"

    float-to-int v13, v8

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "appWidgetMaxHeight"

    float-to-int v13, v10

    invoke-virtual {v2, v11, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    return-void
.end method
